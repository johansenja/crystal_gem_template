# Crystal Gem Template

A demo Ruby gem, written in Crystal. Very much in α.

Targetting usage like any other Ruby gem:

`gem install crystal_gem_template`

or

```ruby
# Gemfile
gem "crystal_gem_template"
```

then

```ruby
# app.rb
require 'crystal_gem_template'

include CrystalGemTemplate

hello('world') # => "hello world"
```

Not a lot going on here, clearly, but this opens the door for performant code written in Crystal, then used in Ruby apps, going via Ruby's C API.

TODO: get the gem to actually install properly!
