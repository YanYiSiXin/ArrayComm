file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-csma-debug.pdb"
  "../../../build/lib/libns3.37-csma-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libcsma.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
