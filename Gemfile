source 'https://rubygems.org'
gem 'json'
gem 'psych'
# gem 'rest-client', '2.0.0.rc2'
gem 'rest-client', '>=2.0'
# gem 'httpclient', '>=2.4'
gem 'net-ssh'
# for ED25519 ssh keys gems `ed25519` and `bcrypt_pbkdf` are also needed
# for RSA keys in the new OPENSSH format (not RSA) then newer net-ssh is needed:
# https://github.com/net-ssh/net-ssh/pull/646
gem 'net-scp'
# gem 'net-ssh-multi'
gem 'cucumber', '~>2.4.0'
# gem 'rspec', '~>2.14.1'
# gem 'rspec-expectations', '~>2.14.0'
gem 'aws-sdk', '~> 2'
gem 'google-api-client', '~>0.9.2'
gem 'rbvmomi'

gem 'azure-storage'
# for upgrading to 0.15.x see according to changelog
# https://github.com/Azure/azure-sdk-for-ruby/pull/1090
# https://github.com/Azure/azure-sdk-for-ruby/pull/1092
gem 'azure_mgmt_storage', '~>0.17.0'
gem 'azure_mgmt_compute', '~>0.18.0'
gem 'azure_mgmt_resources', '~>0.17.0'
gem 'azure_mgmt_network', '~>0.17.0'

# gem 'timers'
## Logging
gem 'term-ansicolor'
## Webauto
gem 'watir', '~> 6.10.3' # undefined methodnew' for nil:NilClass in #6276
gem 'headless'
gem 'selenium-webdriver', "~>3.11.0" # limit webdriver to support legacy ff
## Docs
# beware https://github.com/pry/pry/issues/1465
#        https://bugzilla.redhat.com/show_bug.cgi?id=1257578
# gem 'yard-cucumber' # something broken vs pry; requires cucumber 1.3
## Debugging
gem 'pry'
# https://github.com/deivid-rodriguez/pry-byebug/issues/71
# gem 'pry-byebug', :require => false
gem 'byebug'
gem 'jira-ruby'
### XXX 0.1.7 is breaking things need to investigate further, patch this for now
#gem 'configparser', '0.1.6'
gem 'parseconfig'
gem 'nokogiri' # needed here to make tools/hack_bundle.rb work correctly
# oga is a replacemen for nokogiri without system deps; we wrongly thought
#  that we can live without nokogiry but couldn't because of other gem deps
gem 'oga' # replacemen for nokogiri when we thought we can workaround it
# gem 'gherkin', '>=4.0.0'
# gem 'lolsoap'
# gem 'mongo'
# gem 'bson_ext'
# gem 'parseconfig'
# gem 'rake'
# gem 'rails', '~>3.2.0'
# gem 'rhc'
# gem 'mongoid'
# gem 'text-table'
# gem 'terminal-table'
