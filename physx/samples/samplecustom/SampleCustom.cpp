//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//  * Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of NVIDIA CORPORATION nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Copyright (c) 2008-2019 NVIDIA Corporation. All rights reserved.
// Copyright (c) 2004-2008 AGEIA Technologies, Inc. All rights reserved.
// Copyright (c) 2001-2004 NovodeX AG. All rights reserved.  

#include "SamplePreprocessor.h"
#include "SampleCustom.h"
#include "SampleUtils.h"
#include "SampleConsole.h"
#include "RendererMemoryMacros.h"
#include "RenderMeshActor.h"

#include "PxPhysics.h"
#include "PxScene.h"
#include "PxRigidDynamic.h"
#include "PxShape.h"
#include "PxPhysicsAPI.h"
#include "RenderBoxActor.h"

#include <SampleBaseInputEventIds.h>
#include <SamplePlatform.h>
#include <SampleUserInput.h>
#include <SampleUserInputIds.h>
#include <SampleUserInputDefines.h>

using namespace SampleRenderer;
using namespace SampleFramework;

REGISTER_SAMPLE(SampleCustom, "SampleCustom")

///////////////////////////////////////////////////////////////////////////////

#define PI							PxPi
#define PI_DIV_2					PxPiDivTwo
#define PI_DIV_3					PI / 3.0f
#define PI_DIV_4					PxPiDivFour
#define PI_DIV_6					PI_DIV_2 / 3.0f
#define PI_DIV_8					PI_DIV_4 / 2.0f
#define PI_DIV_12					PI_DIV_6 / 2.0f
#define PI_DIV_16					PI_DIV_8 / 2.0f

///////////////////////////////////////////////////////////////////////////////

#define EX0_SPHERES_RADIUS			0.2f

#define EX0_USE_CAPSULES			0

#define EX0_NB_LINKS				23
#define EX0_CAPSULES_RADIUS			0.05f
#define EX0_CAPSULES_DIAMETER		EX0_CAPSULES_RADIUS * 2.0f
#define EX0_CAPSULES_MASS			1.0f
#define EX0_CAPSULES_HEIGHT			0.1f
#define EX0_CAPSULES_HALF_HEIGHT	EX0_CAPSULES_HEIGHT / 2.0f

#define EX0_WEIGHT_MASS				EX0_CAPSULES_MASS * 1.0f

#define EX0_BAR_LENGTH				10.0f
#define EX0_BAR_RADIUS				0.2f
#define EX0_ANGULAR_SPEED			-PI_DIV_4	// In radians/seconds
#define EX0_STABILIZATION_SETUP_DELAY	2

#define EX0_NB_JOINTS_STEPS			100
#define EX0_NB_POS_ITERS			1
#define EX0_NB_VEL_ITERS			1

///////////////////////////////////////////////////////////////////////////////

SampleCustom::SampleCustom(PhysXSampleApplication& app) :
	PhysXSample(app)
{
}

SampleCustom::~SampleCustom()
{
}

void SampleCustom::onTickPreRender(float dtime)
{
	PhysXSample::onTickPreRender(dtime);

	// Update angular velocity
	if (m_elapsedTimeSinceFirstPreRender > EX0_STABILIZATION_SETUP_DELAY)
	{
		PxTransform transform = m_bar->getGlobalPose();
		m_bar->setKinematicTarget(PxTransform(transform.p, transform.q * PxQuat(EX0_ANGULAR_SPEED * dtime, PxVec3(1, 0, 0))));
	}
	else
		m_elapsedTimeSinceFirstPreRender += dtime;
}

void SampleCustom::onTickPostRender(float dtime)
{
	PhysXSample::onTickPostRender(dtime);
}

void SampleCustom::customizeSceneDesc(PxSceneDesc& sceneDesc)
{
	sceneDesc.flags |= PxSceneFlag::eREQUIRE_RW_LOCK;
}

void SampleCustom::newMesh(const RAWMesh& data)
{
}

static void gValue(Console* console, const char* text, void* userData)
{
	if(!text)
	{
		console->out("Usage: value <float>");
		return;
	}

	const float val = (float)::atof(text);
	shdfnd::printFormatted("value: %f\n", val);
}

static void gExport(Console* console, const char* text, void* userData)
{
	if(!text)
	{
		console->out("Usage: export <filename>");
		return;
	}
}

static void gImport(Console* console, const char* text, void* userData)
{
	if(!text)
	{
		console->out("Usage: import <filename>");
		return;
	}
}

void SampleCustom::onInit()
{
	if(getConsole())
	{
		getConsole()->addCmd("value", gValue);
		getConsole()->addCmd("export", gExport);
		getConsole()->addCmd("import", gImport);
	}

	PhysXSample::onInit();

	mApplication.setMouseCursorHiding(true);
	mApplication.setMouseCursorRecentering(true);

	// Set camera position and orientation
	mCameraController.init(PxVec3(0.0f, 5.0f, 15.0f), PxVec3(0.0f, 0.0f, 0.0f));
	mCameraController.setMouseSensitivity(0.5f);

	// Set init position
	PxVec3 pos(0, 1, 0);
	PxVec3 linVel(0);
	
	// Create sphere as weight
	PxRigidDynamic* weight = createSphere(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_SPHERES_RADIUS, &linVel, mManagedMaterials[MATERIAL_GREY]);
	PxRigidBodyExt::setMassAndUpdateInertia(*weight, EX0_WEIGHT_MASS);
	weight->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);
	pos.y += EX0_SPHERES_RADIUS;

	// Create capsules as chain links
	PxRigidDynamic* links[EX0_NB_LINKS];
	int linkMaterial = MATERIAL_RED;
	for (size_t i = 0; i < EX0_NB_LINKS; ++i)
	{
		if (EX0_USE_CAPSULES)
		{
			pos.y += EX0_CAPSULES_RADIUS + EX0_CAPSULES_HALF_HEIGHT;
			links[i] = createCapsule(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_CAPSULES_RADIUS, EX0_CAPSULES_HALF_HEIGHT, &linVel, mManagedMaterials[linkMaterial++]);
			pos.y += EX0_CAPSULES_RADIUS + EX0_CAPSULES_HALF_HEIGHT;
		}
		else
		{
			pos.y += EX0_CAPSULES_RADIUS;
			links[i] = createSphere(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_CAPSULES_RADIUS, &linVel, mManagedMaterials[linkMaterial++]);
			pos.y += EX0_CAPSULES_RADIUS;
		}

		PxRigidBodyExt::setMassAndUpdateInertia(*links[i], EX0_CAPSULES_MASS);
		links[i]->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);
		if (linkMaterial > MATERIAL_BLUE)
			linkMaterial = MATERIAL_RED;	
	}
	
	// Create capsule as bar
	pos.y += EX0_BAR_RADIUS;
	m_bar = createCapsule(PxTransform(pos/*, PxQuat(-PxPiDivFour, PxVec3(0, 1, 0))*/), EX0_BAR_RADIUS, EX0_BAR_LENGTH / 2.0f, &linVel, mManagedMaterials[MATERIAL_YELLOW]);
	m_bar->setRigidBodyFlag(PxRigidBodyFlag::eKINEMATIC, true);
	m_bar->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);

	// Create joints
	for (size_t s = 0; s < EX0_NB_JOINTS_STEPS; ++s)
	{
		// Create weight/first chain link joint
		{
			PxRigidActor* actor0 = weight;
			PxRigidActor* actor1 = links[0];
			PxSphericalJoint* wljoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_SPHERES_RADIUS, 0, 0), actor1, PxTransform(-EX0_CAPSULES_HALF_HEIGHT - EX0_CAPSULES_RADIUS, 0, 0));
			wljoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			wljoint->getConstraint()->setMinResponseThreshold(1e-8);
		}

		// Create chain link/chain link joints
		for (size_t i = 0; i < EX0_NB_LINKS - 1; ++i)
		{
			PxRigidActor* actor0 = links[i];
			PxRigidActor* actor1 = links[i + 1];
			PxSphericalJoint* lljoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_CAPSULES_HALF_HEIGHT + EX0_CAPSULES_RADIUS, 0, 0), actor1, PxTransform(-EX0_CAPSULES_HALF_HEIGHT - EX0_CAPSULES_RADIUS, 0, 0));
			lljoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			lljoint->getConstraint()->setMinResponseThreshold(1e-8);
		}

		// Create last chain link/bar joint
		{
			PxRigidActor* actor0 = m_bar;
			PxRigidActor* actor1 = links[EX0_NB_LINKS - 1];
			PxSphericalJoint* lbjoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(0, -EX0_BAR_RADIUS, 0), actor1, PxTransform(EX0_CAPSULES_HALF_HEIGHT + EX0_CAPSULES_RADIUS, 0, 0));
			lbjoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			lbjoint->getConstraint()->setMinResponseThreshold(1e-8);
		}
	}
}

void SampleCustom::collectInputEvents(std::vector<const SampleFramework::InputEvent*>& inputEvents)
{
	PhysXSample::collectInputEvents(inputEvents);
	getApplication().getPlatform()->getSampleUserInput()->unregisterInputEvent(CAMERA_SPEED_INCREASE);
	getApplication().getPlatform()->getSampleUserInput()->unregisterInputEvent(CAMERA_SPEED_DECREASE);
}

void SampleCustom::helpRender(PxU32 x, PxU32 y, PxU8 textAlpha)
{
	Renderer* renderer = getRenderer();
	const PxU32 yInc = 18;
	const PxReal scale = 0.5f;
	const PxReal shadowOffset = 6.0f;
	const RendererColor textColor(255, 255, 255, textAlpha);
	const bool isMouseSupported = getApplication().getPlatform()->getSampleUserInput()->mouseSupported();
	const bool isPadSupported = getApplication().getPlatform()->getSampleUserInput()->gamepadSupported();
	const char* msg;

	if (isMouseSupported && isPadSupported)
		renderer->print(x, y += yInc, "Use mouse or right stick to rotate", scale, shadowOffset, textColor);
	else if (isMouseSupported)
		renderer->print(x, y += yInc, "Use mouse to rotate", scale, shadowOffset, textColor);
	else if (isPadSupported)
		renderer->print(x, y += yInc, "Use right stick to rotate", scale, shadowOffset, textColor);
	if (isPadSupported)
		renderer->print(x, y += yInc, "Use left stick to move",scale, shadowOffset, textColor);
	msg = mApplication.inputMoveInfoMsg("Press "," to move", CAMERA_MOVE_FORWARD,CAMERA_MOVE_BACKWARD, CAMERA_MOVE_LEFT, CAMERA_MOVE_RIGHT);
	if(msg)
		renderer->print(x, y += yInc, msg,scale, shadowOffset, textColor);
	msg = mApplication.inputInfoMsg("Press "," to move fast", CAMERA_SHIFT_SPEED, -1);
	if(msg)
		renderer->print(x, y += yInc, msg, scale, shadowOffset, textColor);
	msg = mApplication.inputInfoMsg("Press "," to throw an object", SPAWN_DEBUG_OBJECT, -1);
	if(msg)
		renderer->print(x, y += yInc, msg,scale, shadowOffset, textColor);
}

void SampleCustom::descriptionRender(PxU32 x, PxU32 y, PxU8 textAlpha)
{
	bool print=(textAlpha!=0.0f);

	if(print)
	{
		Renderer* renderer = getRenderer();
		const PxU32 yInc = 18;
		const PxReal scale = 0.5f;
		const PxReal shadowOffset = 6.0f;
		const RendererColor textColor(255, 255, 255, textAlpha);

		char line1[256]="This sample demonstrates how to set up and simulate a PhysX";
		char line2[256]="scene.  Further, it illustrates the creation, simulation and";
		char line3[256]="collision of simple dynamic objects.";
		renderer->print(x, y+=yInc, line1, scale, shadowOffset, textColor);
		renderer->print(x, y+=yInc, line2, scale, shadowOffset, textColor);
		renderer->print(x, y+=yInc, line3, scale, shadowOffset, textColor);
	}
}

PxU32 SampleCustom::getDebugObjectTypes() const
{
	return DEBUG_OBJECT_BOX | DEBUG_OBJECT_SPHERE | DEBUG_OBJECT_CAPSULE | DEBUG_OBJECT_CONVEX;
}
