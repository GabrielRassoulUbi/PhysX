# Install script for directory: D:/MyPhysX/PhysX/physx/source/compiler/cmake

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/MyPhysX/PhysX/physx/install/vc14win64/PhysX")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/source/foundation/include/windows" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsAoS.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsFPU.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsInclude.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsInlineAoS.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsIntrinsics.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/windows/PsWindowsTrigConstants.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/windows/PxWindowsIntrinsics.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/windows" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/windows/PxWindowsIntrinsics.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/unix/PxUnixIntrinsics.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/unix" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/unix/PxUnixIntrinsics.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXFoundation_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXFoundation_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXFoundation_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXFoundation_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/PxFoundation.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/foundation" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/foundation/PxAssert.h"
    "D:/MyPhysX/PhysX/physx/include/foundation/PxFoundationConfig.h"
    "D:/MyPhysX/PhysX/physx/include/foundation/PxMathUtils.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/source/foundation/include" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/source/foundation/include/Ps.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsAlignedMalloc.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsAlloca.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsAllocator.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsAoS.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsArray.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsAtomic.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsBasicTemplates.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsBitUtils.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsBroadcast.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsCpu.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsFoundation.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsFPU.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsHash.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsHashInternals.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsHashMap.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsHashSet.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsInlineAllocator.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsInlineAoS.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsInlineArray.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsIntrinsics.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsMathUtils.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsMutex.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsPool.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsSList.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsSocket.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsSort.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsSortInternals.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsString.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsSync.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsTempAllocator.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsThread.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsTime.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsUserAllocated.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsUtilities.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecMath.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecMathAoSScalar.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecMathAoSScalarInline.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecMathSSE.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecMathUtilities.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecQuat.h"
    "D:/MyPhysX/PhysX/physx/source/foundation/include/PsVecTransform.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/Px.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxAllocatorCallback.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxProfiler.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxSharedAssert.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxBitAndData.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxBounds3.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxErrorCallback.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxErrors.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxFlags.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxIntrinsics.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxIO.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxMat33.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxMat44.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxMath.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxMemory.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxPlane.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxPreprocessor.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxQuat.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxSimpleTypes.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxStrideIterator.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxTransform.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxUnionCast.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxVec2.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxVec3.h;D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation/PxVec4.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "D:/MyPhysX/PhysX/physx/install/vc14win64/PxShared/include/foundation" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/Px.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxAllocatorCallback.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxProfiler.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxSharedAssert.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxBitAndData.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxBounds3.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxErrorCallback.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxErrors.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxFlags.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxIntrinsics.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxIO.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxMat33.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxMat44.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxMath.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxMemory.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxPlane.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxPreprocessor.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxQuat.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxSimpleTypes.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxStrideIterator.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxTransform.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxUnionCast.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxVec2.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxVec3.h"
    "D:/MyPhysX/PhysX/physx/../pxshared/include/foundation/PxVec4.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gpu" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/gpu/PxGpu.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cudamanager" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/cudamanager/PxCudaContextManager.h"
    "D:/MyPhysX/PhysX/physx/include/cudamanager/PxCudaMemoryManager.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/common/windows" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/common/windows/PxWindowsDelayLoadHook.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysX_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysX_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysX_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysX_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/PxActor.h"
    "D:/MyPhysX/PhysX/physx/include/PxAggregate.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulationReducedCoordinate.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulationBase.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulation.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulationJoint.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulationJointReducedCoordinate.h"
    "D:/MyPhysX/PhysX/physx/include/PxArticulationLink.h"
    "D:/MyPhysX/PhysX/physx/include/PxBatchQuery.h"
    "D:/MyPhysX/PhysX/physx/include/PxBatchQueryDesc.h"
    "D:/MyPhysX/PhysX/physx/include/PxBroadPhase.h"
    "D:/MyPhysX/PhysX/physx/include/PxClient.h"
    "D:/MyPhysX/PhysX/physx/include/PxConstraint.h"
    "D:/MyPhysX/PhysX/physx/include/PxConstraintDesc.h"
    "D:/MyPhysX/PhysX/physx/include/PxContact.h"
    "D:/MyPhysX/PhysX/physx/include/PxContactModifyCallback.h"
    "D:/MyPhysX/PhysX/physx/include/PxDeletionListener.h"
    "D:/MyPhysX/PhysX/physx/include/PxFiltering.h"
    "D:/MyPhysX/PhysX/physx/include/PxForceMode.h"
    "D:/MyPhysX/PhysX/physx/include/PxImmediateMode.h"
    "D:/MyPhysX/PhysX/physx/include/PxLockedData.h"
    "D:/MyPhysX/PhysX/physx/include/PxMaterial.h"
    "D:/MyPhysX/PhysX/physx/include/PxPhysics.h"
    "D:/MyPhysX/PhysX/physx/include/PxPhysicsAPI.h"
    "D:/MyPhysX/PhysX/physx/include/PxPhysicsSerialization.h"
    "D:/MyPhysX/PhysX/physx/include/PxPhysicsVersion.h"
    "D:/MyPhysX/PhysX/physx/include/PxPhysXConfig.h"
    "D:/MyPhysX/PhysX/physx/include/PxPruningStructure.h"
    "D:/MyPhysX/PhysX/physx/include/PxQueryFiltering.h"
    "D:/MyPhysX/PhysX/physx/include/PxQueryReport.h"
    "D:/MyPhysX/PhysX/physx/include/PxRigidActor.h"
    "D:/MyPhysX/PhysX/physx/include/PxRigidBody.h"
    "D:/MyPhysX/PhysX/physx/include/PxRigidDynamic.h"
    "D:/MyPhysX/PhysX/physx/include/PxRigidStatic.h"
    "D:/MyPhysX/PhysX/physx/include/PxScene.h"
    "D:/MyPhysX/PhysX/physx/include/PxSceneDesc.h"
    "D:/MyPhysX/PhysX/physx/include/PxSceneLock.h"
    "D:/MyPhysX/PhysX/physx/include/PxShape.h"
    "D:/MyPhysX/PhysX/physx/include/PxSimulationEventCallback.h"
    "D:/MyPhysX/PhysX/physx/include/PxSimulationStatistics.h"
    "D:/MyPhysX/PhysX/physx/include/PxVisualizationParameter.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/common" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/common/PxBase.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxCollection.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxCoreUtilityTypes.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxMetaData.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxMetaDataFlags.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxPhysicsInsertionCallback.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxPhysXCommonConfig.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxRenderBuffer.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxSerialFramework.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxSerializer.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxStringTable.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxTolerancesScale.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxTypeInfo.h"
    "D:/MyPhysX/PhysX/physx/include/common/PxProfileZone.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pvd" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/pvd/PxPvdSceneClient.h"
    "D:/MyPhysX/PhysX/physx/include/pvd/PxPvd.h"
    "D:/MyPhysX/PhysX/physx/include/pvd/PxPvdTransport.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/collision" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/collision/PxCollisionDefs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/solver" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/solver/PxSolverDefs.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/PxConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCharacterKinematic_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCharacterKinematic_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCharacterKinematic_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCharacterKinematic_static_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/characterkinematic" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxBoxController.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxCapsuleController.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxController.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxControllerBehavior.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxControllerManager.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxControllerObstacles.h"
    "D:/MyPhysX/PhysX/physx/include/characterkinematic/PxExtended.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCommon_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCommon_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCommon_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCommon_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/geometry" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/geometry/PxBoxGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxCapsuleGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxConvexMesh.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxConvexMeshGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxGeometryHelpers.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxGeometryQuery.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxHeightField.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxHeightFieldDesc.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxHeightFieldFlag.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxHeightFieldGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxHeightFieldSample.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxMeshQuery.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxMeshScale.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxPlaneGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxSimpleTriangleMesh.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxSphereGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxTriangle.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxTriangleMesh.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxTriangleMeshGeometry.h"
    "D:/MyPhysX/PhysX/physx/include/geometry/PxBVHStructure.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/geomutils" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/geomutils/GuContactBuffer.h"
    "D:/MyPhysX/PhysX/physx/include/geomutils/GuContactPoint.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCooking_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCooking_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCooking_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCooking_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cooking" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/cooking/PxBVH33MidphaseDesc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxBVH34MidphaseDesc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/Pxc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxConvexMeshDesc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxCooking.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxMidphaseDesc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxTriangleMeshDesc.h"
    "D:/MyPhysX/PhysX/physx/include/cooking/PxBVHStructureDesc.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXExtensions_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXExtensions_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXExtensions_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXExtensions_static_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/extensions" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/extensions/PxBinaryConverter.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxBroadPhaseExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxCollectionExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxConstraintExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxContactJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxConvexMeshExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxD6Joint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxD6JointCreate.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDefaultAllocator.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDefaultCpuDispatcher.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDefaultErrorCallback.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDefaultSimulationFilterShader.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDefaultStreams.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxDistanceJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxContactJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxExtensionsAPI.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxFixedJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxJointLimit.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxMassProperties.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxPrismaticJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRaycastCCD.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRepXSerializer.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRepXSimpleType.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRevoluteJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRigidActorExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxRigidBodyExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxSceneQueryExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxSerialization.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxShapeExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxSimpleFactory.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxSmoothNormals.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxSphericalJoint.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxStringTableExt.h"
    "D:/MyPhysX/PhysX/physx/include/extensions/PxTriangleMeshExt.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/filebuf" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/include/filebuf/PxFileBuf.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXVehicle_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXVehicle_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXVehicle_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXVehicle_static_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vehicle" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleComponents.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleDrive.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleDrive4W.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleDriveNW.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleDriveTank.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleNoDrive.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleSDK.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleShaders.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleTireFriction.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleUpdate.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleUtil.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleUtilControl.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleUtilSetup.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleUtilTelemetry.h"
    "D:/MyPhysX/PhysX/physx/include/vehicle/PxVehicleWheels.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/source/fastxml/include" TYPE FILE FILES "D:/MyPhysX/PhysX/physx/source/fastxml/include/PsFastXml.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXPvdSDK_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXPvdSDK_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXPvdSDK_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXPvdSDK_static_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXTask_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXTask_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXTask_static_64.pdb")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE FILE OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXTask_static_64.pdb")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/task" TYPE FILE FILES
    "D:/MyPhysX/PhysX/physx/include/task/PxCpuDispatcher.h"
    "D:/MyPhysX/PhysX/physx/include/task/PxTask.h"
    "D:/MyPhysX/PhysX/physx/include/task/PxTaskDefine.h"
    "D:/MyPhysX/PhysX/physx/include/task/PxTaskManager.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXFoundation_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXFoundation_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXFoundation_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXFoundation_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXFoundation_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXFoundation_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXFoundation_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXFoundation_64.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysX_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysX_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysX_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysX_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysX_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysX_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysX_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysX_64.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCharacterKinematic_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCharacterKinematic_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCharacterKinematic_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCharacterKinematic_static_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXPvdSDK_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXPvdSDK_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXPvdSDK_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXPvdSDK_static_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCommon_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCommon_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCommon_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCommon_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCommon_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCommon_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCommon_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCommon_64.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCooking_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCooking_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCooking_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY OPTIONAL FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCooking_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXCooking_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXCooking_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXCooking_64.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE SHARED_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXCooking_64.dll")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXExtensions_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXExtensions_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXExtensions_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXExtensions_static_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXVehicle_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXVehicle_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXVehicle_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXVehicle_static_64.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/debug" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/debug/PhysXTask_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Cc][Hh][Ee][Cc][Kk][Ee][Dd])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/checked" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/checked/PhysXTask_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Pp][Rr][Oo][Ff][Ii][Ll][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/profile" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/profile/PhysXTask_static_64.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin/win.x86_64.vc140.mt/release" TYPE STATIC_LIBRARY FILES "D:/MyPhysX/PhysX/physx/bin/win.x86_64.vc140.mt/release/PhysXTask_static_64.lib")
  endif()
endif()

