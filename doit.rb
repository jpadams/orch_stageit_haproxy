#!/opt/puppet/bin/ruby
 
require 'yaml'
require 'base64'
 
runlist = YAML.load_file(ARGV[0])
runlist.each do |manifest, node|
  text    = File.read(manifest)
  encoded = Base64.strict_encode64(text)
  puts "applying #{manifest} on #{node}"
  command = "/bin/su - peadmin -c \'mco rpc stageit run manifest=\"#{encoded}\" -I #{node}\'"
  result = %x(#{command})
  if /Return Value: [1,4]/ =~ result
    print result
    exit
  end
end
