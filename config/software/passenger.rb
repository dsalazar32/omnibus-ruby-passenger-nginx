name 'passenger'
default_version '5.0.5'

dependency 'rubygems'

build do
  gem "install passenger -n #{install_dir}/embedded/bin --no-rdoc --no-ri -v #{version}"
end
