require 'java'
require_relative '../java_world/hello_world.jar'

java_import 'HelloWorld'

puts 'Hello from JRuby'

puts HelloWorld.helloFromRust("JRuby")
