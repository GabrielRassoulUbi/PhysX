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


#ifndef SAMPLE_CUSTOM_H
#define SAMPLE_CUSTOM_H

#include "PhysXSample.h"

	class SampleCustom : public PhysXSample
	{
	public:
												SampleCustom(PhysXSampleApplication& app);
		virtual									~SampleCustom();

		virtual	void							onTickPreRender(float dtime);
		virtual	void							onTickPostRender(float dtime);
		virtual	void							customizeSceneDesc(PxSceneDesc&);

		virtual	void							newMesh(const RAWMesh&);
		virtual	void							onInit();
        virtual	void						    onInit(bool restart) { onInit(); }

		virtual void							collectInputEvents(std::vector<const SampleFramework::InputEvent*>& inputEvents);
		virtual void							helpRender(PxU32 x, PxU32 y, PxU8 textAlpha);
		virtual	void							descriptionRender(PxU32 x, PxU32 y, PxU8 textAlpha);
		virtual PxU32							getDebugObjectTypes() const;

	private:

		PxRigidDynamic* m_bar;
		float m_elapsedTimeSinceFirstPreRender = 0.0f;
		PxRigidDynamic* m_compoundShapes = nullptr;
		PxShape* m_shapeToDetach = nullptr;
		PxRigidDynamic* m_boxSupport[2];
	};

#endif
