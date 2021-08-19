require 'facter'
puts 'os='
puts Facter['osfamily'].value
$os = Facter['osfamily'].value
# if $os ==""
#
# end
