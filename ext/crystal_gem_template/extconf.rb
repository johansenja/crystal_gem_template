require "mkmf"
find_executable("crystal") or abort
$srcs = Dir["./**/*.cr"]
$OBJEXT = "cr"
create_makefile("crystal_gem_template.bundle") do |_predefined_config|
  "\n../../lib/crystal_gem_template.bundle: ./src/crystal_gem_template.cr\n\tcrystal $< --link-flags \"-dynamic -bundle -Wl,-undefined,dynamic_lookup\" -o ../../lib/crystal_gem_template.bundle\n"
end
