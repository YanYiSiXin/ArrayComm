file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-nr-debug.pdb"
  "../../../build/lib/libns3.37-nr-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libnr.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
