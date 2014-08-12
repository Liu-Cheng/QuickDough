FILE(REMOVE_RECURSE
  "opencv_highgui_automoc.cpp"
  "opencv_highgui_pch_dephelp_automoc.cpp"
  "opencv_perf_highgui_automoc.cpp"
  "opencv_perf_highgui_pch_dephelp_automoc.cpp"
  "opencv_test_highgui_automoc.cpp"
  "opencv_test_highgui_pch_dephelp_automoc.cpp"
  "CMakeFiles/pch_Generate_opencv_perf_highgui"
  "perf_precomp.hpp.gch/opencv_perf_highgui_Release.gch"
  "perf_precomp.hpp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/pch_Generate_opencv_perf_highgui.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
