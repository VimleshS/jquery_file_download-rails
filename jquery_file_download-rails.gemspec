lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

require 'jquery_file_download/rails/version'

Gem::Specification.new do |s|
  s.name = 'jquery_file_download-rails'
  s.version = JqueryFileDownload::Rails::VERSION
  s.date = Date.today rescue '1970-01-01'
  s.summary = 'jquery_file_download-rails'
  s.description = 'jquery.fileDownload.js package for Rails 3.1+ asset pipeline'
  s.license = 'MIT'
  s.authors = 'Richard Cook'
  s.email = 'rcook@rcook.org'
  s.homepage = 'https://github.com/rcook/jquery-filedownload-rails/'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['LICENSE', 'Rakefile', 'README.md', 'CHANGELOG.md']
  s.require_path = 'lib'
  s.add_dependency 'railties', '>= 3.1.0'
end

