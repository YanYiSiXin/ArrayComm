file(REMOVE_RECURSE
  "../../../build/lib/libns3.37-propagation-debug.pdb"
  "../../../build/lib/libns3.37-propagation-debug.so"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/libpropagation.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
