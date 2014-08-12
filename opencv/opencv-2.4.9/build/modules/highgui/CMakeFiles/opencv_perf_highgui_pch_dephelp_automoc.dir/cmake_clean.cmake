FILE(REMOVE_RECURSE
  "opencv_highgui_automoc.cpp"
  "opencv_highgui_pch_dephelp_automoc.cpp"
  "opencv_perf_highgui_automoc.cpp"
  "opencv_perf_highgui_pch_dephelp_automoc.cpp"
  "opencv_test_highgui_automoc.cpp"
  "opencv_test_highgui_pch_dephelp_automoc.cpp"
  "CMakeFiles/opencv_perf_highgui_pch_dephelp_automoc"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/opencv_perf_highgui_pch_dephelp_automoc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
