require "mkmf"
find_executable("crystal") or abort <<~ERR
  You need crystal installed to use this gem.
  Please check out https://crystal-lang.org/ for information on how to install it.
ERR

# # this is pretty horrible
# def create_makefile(_,_ = nil);end
# create_makefile nil
