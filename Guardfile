# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'compass', :workdir => '.', :configuration_file => 'config/config.rb' do
  watch(%r{app/styles/(.+\.scss)})
end

guard 'coffeescript', :output => 'public/js' do 
  watch(%r{app/scripts/(.+\.coffee)})
end
