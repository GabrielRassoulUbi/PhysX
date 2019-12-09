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

#define EX0
//#define EX1
//#define EX2

#ifdef EX0
	#define EX0_SPHERES_RADIUS			0.2f

	#define EX0_JOINTS
	//#define EX0_ARTICULATIONS

	#define EX0_LINK_IS_CAPSULE
	//#define EX0_LINK_IS_SPHERE

	#define EX0_NB_LINKS				30
	#define EX0_LINKS_MASS				1.0f
	#define EX0_LINK_RADIUS				0.05f

	#ifdef EX0_LINK_IS_CAPSULE

		#define EX0_CAPSULES_HEIGHT			0.1f
		#define EX0_CAPSULES_HALF_HEIGHT	(EX0_CAPSULES_HEIGHT / 2.0f)
		#define EX0_LINK_HALF_LENGTH		(EX0_CAPSULES_HALF_HEIGHT + EX0_LINK_RADIUS)

	#elif defined(EX0_LINK_IS_SPHERE)

		#define EX0_LINK_HALF_LENGTH		EX0_LINK_RADIUS

	#endif

	#define EX0_WEIGHT_MASS				EX0_LINKS_MASS * 100.0f

	#define EX0_BAR_LENGTH				10.0f
	#define EX0_BAR_RADIUS				0.2f
	#define EX0_ANGULAR_SPEED			(-PI_DIV_2)	// In radians/seconds
	#define EX0_STABILIZATION_SETUP_DELAY	2

	#define EX0_NB_JOINTS_STEPS			1
	#define EX0_NB_POS_ITERS			10		// Default : 4
	#define EX0_NB_VEL_ITERS			1		// Default : 1
#elif defined(EX1)
	#define EX1_SPHERES_RADIUS			0.2f
	#define EX1_SPHERE_EXTERNAL_MASS	1.0f
	#define EX1_SPHERE_INTERNAL_MASS	10.0f * EX1_SPHERE_EXTERNAL_MASS
	#define EX1_SPHERE_RESTITUTION		0.0f
	#define EX1_SPHERE_EXTERNAL_SPEED	60.0f
	#define DETACH_BODIES_AFTER			5.0f
#elif defined(EX2)
	#define DETACH_BODIES_AFTER			5.0f
#endif

///////////////////////////////////////////////////////////////////////////////

SampleCustom::SampleCustom(PhysXSampleApplication& app) :
	PhysXSample(app)
{
	m_boxSupport[0] = nullptr;
	m_boxSupport[1] = nullptr;
}

SampleCustom::~SampleCustom()
{
}

bool detachDone = true;
float elapsedTime = 0;

void SampleCustom::onTickPreRender(float dtime)
{
	PhysXSample::onTickPreRender(dtime);
	
#ifdef EX0
	// Update angular velocity
	if (m_elapsedTimeSinceFirstPreRender > EX0_STABILIZATION_SETUP_DELAY)
	{
		mScene->lockWrite();
		PxTransform transform = m_bar->getGlobalPose();
		m_bar->setKinematicTarget(PxTransform(transform.p, transform.q * PxQuat(EX0_ANGULAR_SPEED * dtime, PxVec3(1, 0, 0))));
		mScene->unlockWrite();
	}
	else
		m_elapsedTimeSinceFirstPreRender += dtime;
#elif defined(EX1) || defined(EX2)
	elapsedTime += dtime;

	mScene->lockRead();
	PxRaycastBuffer hit;
	bool status = mScene->raycast(PxVec3(0.45f, 5.0f, 0.0f), PxVec3(0, -1, 0), 10, hit);
	
	if (hit.getNbTouches() > 0)
	{
		PxRaycastHit theHit = hit.getTouch(0);
		printf_s("touchHitPos=(%f, %f, %f)\n", theHit.position.x, theHit.position.y, theHit.position.z);
	}

	if (hit.getNbAnyHits() > 0)
	{
		PxRaycastHit theHit = hit.getAnyHit(0);
		//printf_s("anyHitPos=(%f, %f, %f)\n", theHit.position.x, theHit.position.y, theHit.position.z);

		PxShape* shapeHit = theHit.shape;
		printf_s("shapeHitName=%s\n", shapeHit->getName());

		PxRigidActor* actorHit = theHit.actor;
		printf_s("actorHitName=%s\n", actorHit->getName());
	}

	mScene->unlockRead();

	if (!detachDone && m_compoundShapes && m_shapeToDetach && elapsedTime > DETACH_BODIES_AFTER)
	{
		detachDone = true;

		PxTransform pos(m_compoundShapes->getGlobalPose().p + m_shapeToDetach->getLocalPose().p);

		/*
		printf_s("compoundGlobalPos=(%f, %f, %f)\n", m_compoundShapes->getGlobalPose().p.x, m_compoundShapes->getGlobalPose().p.y, m_compoundShapes->getGlobalPose().p.z);
		printf_s("shapeToDetachLocalPos=(%f, %f, %f)\n", m_shapeToDetach->getLocalPose().p.x, m_shapeToDetach->getLocalPose().p.y, m_shapeToDetach->getLocalPose().p.z);
		printf_s("newPos=(%f, %f, %f)\n", pos.p.x, pos.p.y, pos.p.z);
		*/

		m_compoundShapes->detachShape(*m_shapeToDetach);
		m_shapeToDetach->setLocalPose(PxTransform(0, 0, 0));

		PxRigidDynamic* newSphere = PxCreateDynamic(*mPhysics, pos, *m_shapeToDetach, 1.0f);
		
		newSphere->setActorFlag(PxActorFlag::eVISUALIZATION, true);
		newSphere->setAngularDamping(0.5f);
		newSphere->setRigidBodyFlag(PxRigidBodyFlag::eKINEMATIC, false);
		mScene->addActor(*newSphere);
		addPhysicsActors(newSphere);

		createRenderObjectsFromActor(newSphere, mManagedMaterials[MATERIAL_RED]);

#ifdef EX1
		m_compoundShapes->addForce(PxVec3(0, 0, -1));
#elif defined(EX2)
		PxReal forceValue = 10;
		m_boxSupport[0]->addForce(PxVec3(forceValue, 0, 0));
		m_boxSupport[1]->addForce(PxVec3(-forceValue, 0, 0));
#endif
	}
#endif
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

static void setupFiltering(PxRigidActor* actor, PxU32 filterGroup)
{
	PxFilterData filterData;
	filterData.word0 = filterGroup; // word0 = own ID
	const PxU32 numShapes = actor->getNbShapes();
	PxShape** shapes = (PxShape**)SAMPLE_ALLOC(sizeof(PxShape*)*numShapes);
	actor->getShapes(shapes, numShapes);
	for (PxU32 i = 0; i < numShapes; i++)
	{
		PxShape* shape = shapes[i];
		shape->setSimulationFilterData(filterData);
	}
	SAMPLE_FREE(shapes);
}

static void printShapesName(PxRigidActor* actor, size_t index = -1)
{
	const PxU32 numShapes = actor->getNbShapes();
	PxShape** shapes = (PxShape**)SAMPLE_ALLOC(sizeof(PxShape*)*numShapes);
	actor->getShapes(shapes, numShapes);
	for (PxU32 i = 0; i < numShapes; i++)
	{
		if (index == -1 || i == index)
		{
			PxShape* shape = shapes[i];
			printf_s("shape[%u]=%s\n", i, shape->getName());
		}
	}
	SAMPLE_FREE(shapes);
}

static void setShapeName(PxRigidActor* actor, size_t index, const char* name)
{
	const PxU32 numShapes = actor->getNbShapes();
	PxShape** shapes = (PxShape**)SAMPLE_ALLOC(sizeof(PxShape*)*numShapes);
	actor->getShapes(shapes, numShapes);
	for (PxU32 i = 0; i < numShapes; i++)
	{
		if (i == index)
		{
			PxShape* shape = shapes[i];
			shape->setName(name);
			//printf_s("shape[%u]=%s\n", i, name);
		}
	}
	SAMPLE_FREE(shapes);
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
	mCameraController.init(PxVec3(0.0f, 3.0f, 7.0f), PxVec3(0.0f, 0.0f, 0.0f));
	mCameraController.setMouseSensitivity(0.5f);

	mScene->lockWrite();
	
#ifdef EX0
	// Set init position
	PxVec3 pos(0, 1, 0);
	PxVec3 linVel(0);

	// Create sphere as weight
	PxRigidDynamic* weight = createSphere(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_SPHERES_RADIUS, &linVel, mManagedMaterials[MATERIAL_GREY]);
	PxRigidBodyExt::setMassAndUpdateInertia(*weight, EX0_WEIGHT_MASS);
	weight->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);

	pos.y += EX0_SPHERES_RADIUS;

#ifdef EX0_JOINTS
	// Create capsules as chain links
	PxRigidDynamic* links[EX0_NB_LINKS];
	int linkMaterial = MATERIAL_RED;
	for (size_t i = 0; i < EX0_NB_LINKS; ++i)
	{
		//pos.y += EX0_LINK_RADIUS;
		//pos.y += EX0_CAPSULES_HALF_HEIGHT;
		pos.y += EX0_LINK_HALF_LENGTH;

#ifdef EX0_LINK_IS_CAPSULE
		links[i] = createCapsule(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_LINK_RADIUS, EX0_CAPSULES_HALF_HEIGHT, &linVel, mManagedMaterials[linkMaterial++]);
#elif defined(EX0_LINK_IS_SPHERE)
		links[i] = createSphere(PxTransform(pos, PxQuat(PxPiDivTwo, PxVec3(0, 0, 1))), EX0_LINK_HALF_LENGTH, &linVel, mManagedMaterials[linkMaterial++]);
#endif
		//pos.y += EX0_CAPSULES_HALF_HEIGHT;
		pos.y += EX0_LINK_HALF_LENGTH;

		PxRigidBodyExt::setMassAndUpdateInertia(*links[i], EX0_LINKS_MASS);
		links[i]->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);

		if (linkMaterial > MATERIAL_BLUE)
			linkMaterial = MATERIAL_RED;
	}
#endif

	// Create capsule as bar
	pos.y += EX0_BAR_RADIUS;
	m_bar = createCapsule(PxTransform(pos, PxQuat(-PI_DIV_3, PxVec3(0, 1, 0))), EX0_BAR_RADIUS, EX0_BAR_LENGTH / 2.0f, &linVel, mManagedMaterials[MATERIAL_YELLOW]);
	m_bar->setRigidBodyFlag(PxRigidBodyFlag::eKINEMATIC, true);
	m_bar->setSolverIterationCounts(EX0_NB_POS_ITERS, EX0_NB_VEL_ITERS);

#ifdef EX0_JOINTS
	// Create joints
	for (size_t s = 0; s < EX0_NB_JOINTS_STEPS; ++s)
	{
		// Create weight/first chain link joint
		{
			PxRigidActor* actor0 = weight;
			PxRigidActor* actor1 = links[0];
			PxSphericalJoint* wljoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_SPHERES_RADIUS, 0, 0), actor1, PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
			
			/*
			wljoint->setConstraintFlag(PxConstraintFlag::ePROJECTION, true);
			wljoint->setProjectionLinearTolerance(0.1f);
			*/
			/*
			wljoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			wljoint->getConstraint()->setMinResponseThreshold(1e-8);
			*/
		}

		// Create chain link/chain link joints
		for (size_t i = 0; i < EX0_NB_LINKS - 1; ++i)
		{
			PxRigidActor* actor0 = links[i];
			PxRigidActor* actor1 = links[i + 1];
			//PxRigidActor* actor2 = (i + 2 < EX0_NB_LINKS) ? links[i + 2] : nullptr;
			PxSphericalJoint* lljoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_LINK_HALF_LENGTH, 0, 0), actor1, PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
			/*if (actor2)
			{
				//PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_LINK_HALF_LENGTH, 0, 0), actor2, PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
				PxDistanceJointCreate(*mPhysics, actor0, PxTransform(EX0_LINK_HALF_LENGTH, 0, 0), actor2, PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
			}*/
			/*
			lljoint->setConstraintFlag(PxConstraintFlag::ePROJECTION, true);
			lljoint->setProjectionLinearTolerance(0.1f);
			*/
			/*
			lljoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			lljoint->getConstraint()->setMinResponseThreshold(1e-8);
			*/
		}

		// Create last chain link/bar joint
		{
			PxRigidActor* actor0 = m_bar;
			PxRigidActor* actor1 = links[EX0_NB_LINKS - 1];
			PxSphericalJoint* lbjoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(0, -EX0_BAR_RADIUS, 0), actor1, PxTransform(EX0_LINK_HALF_LENGTH, 0, 0));
			/*
			lbjoint->setConstraintFlag(PxConstraintFlag::ePROJECTION, true);
			lbjoint->setProjectionLinearTolerance(0.1f);
			*/
			/*
			lbjoint->setConstraintFlag(PxConstraintFlag::eDISABLE_PREPROCESSING, true);
			lbjoint->getConstraint()->setMinResponseThreshold(1e-8);
			*/
		}
	}
#elif defined(EX0_ARTICULATIONS)
	// FIXME MOVE THIS CODE UPPER WITH THE OBJECTS CREATION

	PxCapsuleGeometry linkGeom(EX0_LINK_RADIUS, EX0_CAPSULES_HALF_HEIGHT);

	PxArticulation* articulation = mPhysics->createArticulation();
	PxArticulationLink* articulationLinks[EX0_NB_LINKS];
	articulationLinks[0] = articulation->createLink(nullptr, PxTransform(0, 0, 0));

	PxRigidActorExt::createExclusiveShape(*articulationLinks[0], linkGeom, *mMaterial);
	PxRigidBodyExt::updateMassAndInertia(*articulationLinks[0], 1.0f);

	// Create chain link/chain link articulations
	for (size_t i = 0; i < EX0_NB_LINKS - 1; ++i)
	{
		articulationLinks[i + 1] = articulation->createLink(articulationLinks[i], PxTransform(0, 0, 0));
		PxRigidActorExt::createExclusiveShape(*articulationLinks[i + 1], linkGeom, *mMaterial);
		PxRigidBodyExt::updateMassAndInertia(*articulationLinks[i + 1], 1.0f);

		PxArticulationJoint* joint = static_cast<PxArticulationJoint*>(articulationLinks[i + 1]->getInboundJoint());
		joint->setParentPose(PxTransform(0, 0, 0));
		joint->setChildPose(PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
	}

	mScene->addArticulation(*articulation);

	
	// Create weight/first chain link joint
	{/*
		PxRigidActor* actor0 = weight;
		PxRigidActor* actor1 = articulationLinks[0];
		PxSphericalJoint* wljoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(EX0_SPHERES_RADIUS - EX0_LINK_HALF_LENGTH, 0, 0), actor1, PxTransform(-EX0_LINK_HALF_LENGTH, 0, 0));
	*/}

	// Create last chain link/bar joint
	{
		PxRigidActor* actor0 = m_bar;
		PxRigidActor* actor1 = articulationLinks[EX0_NB_LINKS - 1];
		PxSphericalJoint* lbjoint = PxSphericalJointCreate(*mPhysics, actor0, PxTransform(0, -EX0_BAR_RADIUS + EX0_LINK_HALF_LENGTH, 0), actor1, PxTransform(EX0_LINK_HALF_LENGTH, 0, 0));
	}
#endif
#elif defined(EX1)
	PxVec3 externLinVel(0, -EX1_SPHERE_EXTERNAL_SPEED, 0);
	PxVec3 internLinVel(0);
	PxTransform pos(0, 4, 0);

	//////////////////////////////////////////////////////////////////////////

	PxShape* externalSphereShape = mPhysics->createShape(PxSphereGeometry(EX1_SPHERES_RADIUS), *mMaterial);
	m_shapeToDetach = mPhysics->createShape(PxSphereGeometry(EX1_SPHERES_RADIUS / 2.0f), *mMaterial);
	
	m_compoundShapes = PxCreateDynamic(*mPhysics, pos, *externalSphereShape, 1.0f);
	m_compoundShapes->attachShape(*m_shapeToDetach);
	m_compoundShapes->setLinearVelocity(externLinVel);

	m_compoundShapes->setActorFlag(PxActorFlag::eVISUALIZATION, true);
	m_compoundShapes->setAngularDamping(0.5f);
	m_compoundShapes->setRigidBodyFlag(PxRigidBodyFlag::eKINEMATIC, false);
	mScene->addActor(*m_compoundShapes);
	addPhysicsActors(m_compoundShapes);

	createRenderObjectsFromActor(m_compoundShapes, mManagedMaterials[MATERIAL_BLUE]);

	setupFiltering(m_compoundShapes, 1);
	PxFilterData filterData;
	filterData.word0 = 1;

	externalSphereShape->setSimulationFilterData(filterData);
	m_shapeToDetach->setSimulationFilterData(filterData);

	PxSetGroupCollisionFlag(1, 1, false);

	//////////////////////////////////////////////////////////////////////////
	++pos.p.x;

	PxRigidDynamic* externalSphere0 = createSphere(PxTransform(1, 4, 0), EX1_SPHERES_RADIUS, &externLinVel, mManagedMaterials[MATERIAL_BLUE]);
	PxRigidBodyExt::setMassAndUpdateInertia(*externalSphere0, EX1_SPHERE_EXTERNAL_MASS);

	//////////////////////////////////////////////////////////////////////////
	++pos.p.x;

	PxRigidDynamic* internalSphere0 = createSphere(PxTransform(2, EX1_SPHERES_RADIUS, 0), EX1_SPHERES_RADIUS / 2.0f, &internLinVel, mManagedMaterials[MATERIAL_RED]);
	PxRigidBodyExt::setMassAndUpdateInertia(*internalSphere0, EX1_SPHERE_INTERNAL_MASS);

	//////////////////////////////////////////////////////////////////////////
	++pos.p.x;

	// Create external sphere
	PxRigidDynamic* externalSphere = createSphere(pos, EX1_SPHERES_RADIUS, &externLinVel, mManagedMaterials[MATERIAL_BLUE]);
	PxRigidBodyExt::setMassAndUpdateInertia(*externalSphere, EX1_SPHERE_EXTERNAL_MASS);

	// Create inner sphere
	PxRigidDynamic* internalSphere = createSphere(pos, EX1_SPHERES_RADIUS / 2.0f, &externLinVel, mManagedMaterials[MATERIAL_RED]);
	PxRigidBodyExt::setMassAndUpdateInertia(*internalSphere, EX1_SPHERE_INTERNAL_MASS);

	PxFixedJoint* joint = PxFixedJointCreate(*mPhysics, externalSphere, PxTransform(PxVec3(0)), internalSphere, PxTransform(PxVec3(0)));
#elif defined(EX2)
	PxVec3 zeroVect(0);
	PxVec3 boxHalfExt(0.5f, 0.5f, 0.5f);

	m_boxSupport[0] = createBox(PxVec3(1.1f, 0.5f, 0.0f), boxHalfExt);
	m_boxSupport[1] = createBox(PxVec3(-1.1f, 0.5f, 0.0f), boxHalfExt);

	PxCapsuleGeometry capsGeom(0.2f, 0.25f);

	PxShape* capsuleShape0 = mPhysics->createShape(capsGeom, *mMaterial);
	capsuleShape0->setName("capsuleShape0");
	printf_s("capsuleShape0=%s\n", capsuleShape0->getName());

	m_shapeToDetach = mPhysics->createShape(capsGeom, *mMaterial);
	m_shapeToDetach->setName("shapeToDetach");
	printf_s("m_shapeToDetach=%s\n", m_shapeToDetach->getName());

	m_compoundShapes = PxCreateDynamic(*mPhysics, PxTransform(-0.45f, 4.0f, 0.0f), *capsuleShape0, 1.0f);
	m_compoundShapes->setName("compoundShape");
	printf_s("m_compoundShapes=%s\n", m_compoundShapes->getName());
	m_compoundShapes->setLinearVelocity(zeroVect);

	m_compoundShapes->attachShape(*m_shapeToDetach);
	m_shapeToDetach->setLocalPose(PxTransform(0.9f, 0.0f, 0.0f));

	m_compoundShapes->setActorFlag(PxActorFlag::eVISUALIZATION, true);
	m_compoundShapes->setAngularDamping(0.5f);
	m_compoundShapes->setRigidBodyFlag(PxRigidBodyFlag::eKINEMATIC, false);
	mScene->addActor(*m_compoundShapes);
	addPhysicsActors(m_compoundShapes);

	createRenderObjectsFromActor(m_compoundShapes, mManagedMaterials[MATERIAL_BLUE]);
#endif

	mScene->unlockWrite();
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
