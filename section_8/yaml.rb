require 'yaml'
require_relative '../section_7/stuff'

s1 = Shield.new
s1.power = 2
s1.value = 99
s2 = Shield.new
s2.power = 7
s2.value = 29

f = File.open('example.yml', 'w')
YAML.dump([s1, s2], f)
f.close

f = File.open('example.yml', 'r')
p YAML.load(f)
f.close