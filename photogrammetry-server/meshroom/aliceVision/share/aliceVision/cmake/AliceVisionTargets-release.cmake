#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "lib_CoinUtils" for configuration "Release"
set_property(TARGET lib_CoinUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lib_CoinUtils PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblib_CoinUtils.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lib_CoinUtils )
list(APPEND _IMPORT_CHECK_FILES_FOR_lib_CoinUtils "${_IMPORT_PREFIX}/lib/liblib_CoinUtils.a" )

# Import target "lib_Osi" for configuration "Release"
set_property(TARGET lib_Osi APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lib_Osi PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblib_Osi.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lib_Osi )
list(APPEND _IMPORT_CHECK_FILES_FOR_lib_Osi "${_IMPORT_PREFIX}/lib/liblib_Osi.a" )

# Import target "lib_clp" for configuration "Release"
set_property(TARGET lib_clp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lib_clp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblib_clp.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lib_clp )
list(APPEND _IMPORT_CHECK_FILES_FOR_lib_clp "${_IMPORT_PREFIX}/lib/liblib_clp.a" )

# Import target "lib_OsiClpSolver" for configuration "Release"
set_property(TARGET lib_OsiClpSolver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lib_OsiClpSolver PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblib_OsiClpSolver.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lib_OsiClpSolver )
list(APPEND _IMPORT_CHECK_FILES_FOR_lib_OsiClpSolver "${_IMPORT_PREFIX}/lib/liblib_OsiClpSolver.a" )

# Import target "lemon" for configuration "Release"
set_property(TARGET lemon APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(lemon PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/liblemon.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS lemon )
list(APPEND _IMPORT_CHECK_FILES_FOR_lemon "${_IMPORT_PREFIX}/lib/liblemon.a" )

# Import target "flann_cpp_s" for configuration "Release"
set_property(TARGET flann_cpp_s APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(flann_cpp_s PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libflann_cpp_s.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS flann_cpp_s )
list(APPEND _IMPORT_CHECK_FILES_FOR_flann_cpp_s "${_IMPORT_PREFIX}/lib/libflann_cpp_s.a" )

# Import target "vlsift" for configuration "Release"
set_property(TARGET vlsift APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(vlsift PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libvlsift.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS vlsift )
list(APPEND _IMPORT_CHECK_FILES_FOR_vlsift "${_IMPORT_PREFIX}/lib/libvlsift.a" )

# Import target "aliceVision_image" for configuration "Release"
set_property(TARGET aliceVision_image APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_image PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_image.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_image.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_image )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_image "${_IMPORT_PREFIX}/lib64/libaliceVision_image.so.2.2" )

# Import target "aliceVision_numeric" for configuration "Release"
set_property(TARGET aliceVision_numeric APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_numeric PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_numeric.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_numeric.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_numeric )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_numeric "${_IMPORT_PREFIX}/lib64/libaliceVision_numeric.so.2.2" )

# Import target "aliceVision_system" for configuration "Release"
set_property(TARGET aliceVision_system APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_system PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_system.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_system.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_system )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_system "${_IMPORT_PREFIX}/lib64/libaliceVision_system.so.2.2" )

# Import target "aliceVision_colorHarmonization" for configuration "Release"
set_property(TARGET aliceVision_colorHarmonization APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_colorHarmonization PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_colorHarmonization.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_colorHarmonization.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_colorHarmonization )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_colorHarmonization "${_IMPORT_PREFIX}/lib64/libaliceVision_colorHarmonization.so.2.2" )

# Import target "aliceVision_dataio" for configuration "Release"
set_property(TARGET aliceVision_dataio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_dataio PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_sfmData;aliceVision_sfmDataIO;aliceVision_system;opencv_core;opencv_imgproc;opencv_video;opencv_imgcodecs;opencv_videoio;opencv_features2d;opencv_xfeatures2d"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_dataio.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_dataio.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_dataio )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_dataio "${_IMPORT_PREFIX}/lib64/libaliceVision_dataio.so.2.2" )

# Import target "aliceVision_feature" for configuration "Release"
set_property(TARGET aliceVision_feature APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_feature PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "PopSift::popsift"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_feature.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_feature.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_feature )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_feature "${_IMPORT_PREFIX}/lib64/libaliceVision_feature.so.2.2" )

# Import target "aliceVision_geometry" for configuration "Release"
set_property(TARGET aliceVision_geometry APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_geometry PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_geometry.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_geometry.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_geometry )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_geometry "${_IMPORT_PREFIX}/lib64/libaliceVision_geometry.so.2.2" )

# Import target "aliceVision_gpu" for configuration "Release"
set_property(TARGET aliceVision_gpu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_gpu PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_gpu.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_gpu.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_gpu )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_gpu "${_IMPORT_PREFIX}/lib64/libaliceVision_gpu.so.2.2" )

# Import target "aliceVision_keyframe" for configuration "Release"
set_property(TARGET aliceVision_keyframe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_keyframe PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_sensorDB;aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_keyframe.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_keyframe.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_keyframe )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_keyframe "${_IMPORT_PREFIX}/lib64/libaliceVision_keyframe.so.2.2" )

# Import target "aliceVision_lInftyComputerVision" for configuration "Release"
set_property(TARGET aliceVision_lInftyComputerVision APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_lInftyComputerVision PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_lInftyComputerVision.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_lInftyComputerVision.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_lInftyComputerVision )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_lInftyComputerVision "${_IMPORT_PREFIX}/lib64/libaliceVision_lInftyComputerVision.so.2.2" )

# Import target "aliceVision_localization" for configuration "Release"
set_property(TARGET aliceVision_localization APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_localization PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system;aliceVision_matchingImageCollection;CCTag::CCTag"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_localization.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_localization.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_localization )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_localization "${_IMPORT_PREFIX}/lib64/libaliceVision_localization.so.2.2" )

# Import target "aliceVision_matching" for configuration "Release"
set_property(TARGET aliceVision_matching APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_matching PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_matching.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_matching.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_matching )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_matching "${_IMPORT_PREFIX}/lib64/libaliceVision_matching.so.2.2" )

# Import target "aliceVision_kvld" for configuration "Release"
set_property(TARGET aliceVision_kvld APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_kvld PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_kvld.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_kvld.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_kvld )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_kvld "${_IMPORT_PREFIX}/lib64/libaliceVision_kvld.so.2.2" )

# Import target "aliceVision_matchingImageCollection" for configuration "Release"
set_property(TARGET aliceVision_matchingImageCollection APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_matchingImageCollection PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system;ceres"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_matchingImageCollection.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_matchingImageCollection.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_matchingImageCollection )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_matchingImageCollection "${_IMPORT_PREFIX}/lib64/libaliceVision_matchingImageCollection.so.2.2" )

# Import target "aliceVision_multiview" for configuration "Release"
set_property(TARGET aliceVision_multiview APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_multiview PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_multiview.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_multiview.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_multiview )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_multiview "${_IMPORT_PREFIX}/lib64/libaliceVision_multiview.so.2.2" )

# Import target "aliceVision_multiview_test_data" for configuration "Release"
set_property(TARGET aliceVision_multiview_test_data APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_multiview_test_data PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_multiview"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_multiview_test_data.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_multiview_test_data.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_multiview_test_data )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_multiview_test_data "${_IMPORT_PREFIX}/lib64/libaliceVision_multiview_test_data.so.2.2" )

# Import target "aliceVision_rig" for configuration "Release"
set_property(TARGET aliceVision_rig APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_rig PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_sfm;aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_rig.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_rig.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_rig )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_rig "${_IMPORT_PREFIX}/lib64/libaliceVision_rig.so.2.2" )

# Import target "aliceVision_sensorDB" for configuration "Release"
set_property(TARGET aliceVision_sensorDB APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_sensorDB PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_sensorDB.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_sensorDB.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_sensorDB )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_sensorDB "${_IMPORT_PREFIX}/lib64/libaliceVision_sensorDB.so.2.2" )

# Import target "aliceVision_sfm" for configuration "Release"
set_property(TARGET aliceVision_sfm APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_sfm PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_sfm.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_sfm.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_sfm )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_sfm "${_IMPORT_PREFIX}/lib64/libaliceVision_sfm.so.2.2" )

# Import target "aliceVision_sfmData" for configuration "Release"
set_property(TARGET aliceVision_sfmData APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_sfmData PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_sfmData.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_sfmData.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_sfmData )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_sfmData "${_IMPORT_PREFIX}/lib64/libaliceVision_sfmData.so.2.2" )

# Import target "aliceVision_sfmDataIO" for configuration "Release"
set_property(TARGET aliceVision_sfmDataIO APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_sfmDataIO PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "Alembic::Alembic"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_sfmDataIO.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_sfmDataIO.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_sfmDataIO )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_sfmDataIO "${_IMPORT_PREFIX}/lib64/libaliceVision_sfmDataIO.so.2.2" )

# Import target "aliceVision_track" for configuration "Release"
set_property(TARGET aliceVision_track APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_track PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_track.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_track.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_track )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_track "${_IMPORT_PREFIX}/lib64/libaliceVision_track.so.2.2" )

# Import target "aliceVision_voctree" for configuration "Release"
set_property(TARGET aliceVision_voctree APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_voctree PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_voctree.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_voctree.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_voctree )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_voctree "${_IMPORT_PREFIX}/lib64/libaliceVision_voctree.so.2.2" )

# Import target "aliceVision_calibration" for configuration "Release"
set_property(TARGET aliceVision_calibration APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_calibration PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_image;aliceVision_system;aliceVision_dataio;CCTag::CCTag"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_calibration.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_calibration.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_calibration )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_calibration "${_IMPORT_PREFIX}/lib64/libaliceVision_calibration.so.2.2" )

# Import target "aliceVision_hdr" for configuration "Release"
set_property(TARGET aliceVision_hdr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_hdr PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_hdr.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_hdr.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_hdr )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_hdr "${_IMPORT_PREFIX}/lib64/libaliceVision_hdr.so.2.2" )

# Import target "aliceVision_lightingEstimation" for configuration "Release"
set_property(TARGET aliceVision_lightingEstimation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_lightingEstimation PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_lightingEstimation.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_lightingEstimation.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_lightingEstimation )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_lightingEstimation "${_IMPORT_PREFIX}/lib64/libaliceVision_lightingEstimation.so.2.2" )

# Import target "aliceVision_mesh" for configuration "Release"
set_property(TARGET aliceVision_mesh APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_mesh PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_mesh.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_mesh.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_mesh )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_mesh "${_IMPORT_PREFIX}/lib64/libaliceVision_mesh.so.2.2" )

# Import target "aliceVision_mvsData" for configuration "Release"
set_property(TARGET aliceVision_mvsData APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_mvsData PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_mvsData.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_mvsData.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_mvsData )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_mvsData "${_IMPORT_PREFIX}/lib64/libaliceVision_mvsData.so.2.2" )

# Import target "aliceVision_mvsUtils" for configuration "Release"
set_property(TARGET aliceVision_mvsUtils APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_mvsUtils PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "aliceVision_system"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_mvsUtils.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_mvsUtils.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_mvsUtils )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_mvsUtils "${_IMPORT_PREFIX}/lib64/libaliceVision_mvsUtils.so.2.2" )

# Import target "aliceVision_fuseCut" for configuration "Release"
set_property(TARGET aliceVision_fuseCut APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_fuseCut PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_fuseCut.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_fuseCut.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_fuseCut )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_fuseCut "${_IMPORT_PREFIX}/lib64/libaliceVision_fuseCut.so.2.2" )

# Import target "aliceVision_depthMap" for configuration "Release"
set_property(TARGET aliceVision_depthMap APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(aliceVision_depthMap PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib64/libaliceVision_depthMap.so.2.2"
  IMPORTED_SONAME_RELEASE "libaliceVision_depthMap.so.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS aliceVision_depthMap )
list(APPEND _IMPORT_CHECK_FILES_FOR_aliceVision_depthMap "${_IMPORT_PREFIX}/lib64/libaliceVision_depthMap.so.2.2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
