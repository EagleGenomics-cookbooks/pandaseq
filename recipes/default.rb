# Cookbook:: pandaseq
# Recipe:: default
#
# Copyright 2017 Eagle Genomics Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.i

include_recipe 'apt' if platform_family?('debian')

package 'language-pack-en'
package 'language-pack-en-base'

include_recipe 'locale-gen'

include_recipe 'build-essential'

apt_repository 'pandaseq' do
  uri 'ppa:neufeldlab/ppa'
end

package 'pandaseq' do
  action :install
end
