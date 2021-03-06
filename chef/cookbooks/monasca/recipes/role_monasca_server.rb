#
# Copyright 2016, SUSE LINUX GmbH
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if CrowbarRoleRecipe.node_state_valid_for_role?(node, "monasca", "monasca-server")
  include_recipe "#{@cookbook_name}::common"
  include_recipe "#{@cookbook_name}::influxdb"
  include_recipe "#{@cookbook_name}::database"
  include_recipe "#{@cookbook_name}::zookeeper"
  include_recipe "#{@cookbook_name}::kafka"
  include_recipe "#{@cookbook_name}::elasticsearch"
  include_recipe "#{@cookbook_name}::elasticsearch_curator"
  include_recipe "#{@cookbook_name}::kibana"
  include_recipe "#{@cookbook_name}::monasca_log_api"
  include_recipe "#{@cookbook_name}::monasca_log_transformer"
  include_recipe "#{@cookbook_name}::monasca_log_persister"
  include_recipe "#{@cookbook_name}::monasca_log_metrics"
  include_recipe "#{@cookbook_name}::storm"
  include_recipe "#{@cookbook_name}::monasca_thresh"
  include_recipe "#{@cookbook_name}::monasca_notification"
  include_recipe "#{@cookbook_name}::monasca_persister"
  include_recipe "#{@cookbook_name}::monasca_api"
  include_recipe "#{@cookbook_name}::server"
  include_recipe "#{@cookbook_name}::monitor_monasca"
end
