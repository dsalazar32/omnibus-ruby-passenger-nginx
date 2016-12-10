#
# Copyright 2016 YOUR NAME
#
# All Rights Reserved.
#

name "ruby-passenger-nginx"
maintainer "David Salazar"
homepage "http://www.iomediums.com"

# Defaults to C:/ruby-passenger-nginx on Windows
# and /opt/ruby-passenger-nginx on all other platforms
install_dir "#{default_root}/#{name}"

build_version '2.2.1-5.0.5-1.6.2'
build_iteration 4 

# Creates required build directories
dependency "preparation"

override :ruby, version: '2.2.5'

dependency 'git'
dependency 'ruby'
dependency 'rubygems'
dependency 'bundler'
dependency 'passenger'
dependency 'nginx'

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
