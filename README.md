#Copyright 2013 Cloudnautique
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#                http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

This Puppet module will download and install the Python Google App Engine SDK. 
It currently defaults to version 1.7.4 and can be configured for future
releases. 

The module depends on the 'wget' module provided by Maestrodev.
  http://github.com/maestrodev/puppet-wget

To use this module download the dependency, and this module.

define your node:
 node * {
    include appengine_python
 }

I use:
puppet apply --modulepath=<modulepath> ./<nodefile>.pp

variables that can be customized:
    appengine_version: version of the SDK. Default is currently 1.7.4.
    sdk_base_url: URL to download the SDK from.
    sdk_file: The name of the file to download.
    install_dir_prefix: the base directory that the SDK will be installed in. 
        Defaults to '/opt/google/appgengine'

To install version 1.7.5 use the following node def:
 node * {
    class { 'appengine_python':
        appengine_version => '1.7.5'
    }
 }

Apply the config.

