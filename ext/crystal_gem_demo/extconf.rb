require "mkmf"
find_executable("crystal") or abort
$srcs = Dir["./**/*.cr"]
$OBJEXT = "cr"
create_makefile("crystal_gem_demo.bundle") do |_predefined_config|
  '
  ../../lib/crystal_gem_demo.bundle: ./src/crystal_gem_demo.cr
    crystal $< --link-flags "-dynamic -bundle -Wl,-undefined,dynamic_lookup" -o ../../lib/crystal_gem_demo.bundle
  '
end
