#
# process monitoring using sensu check and collectd plugin
#

package "irqbalance" do
  action :install
end

# process monitoring and sensu-check config
processes = node[:common_processes]

processes.each do |process|
  sensu_check "check_process_#{process['name']}" do
    command "check-procs.rb -c 10 -w 10 -C 1 -W 1 -p #{process['name']}"
    handlers ["default"]
    standalone true
    interval 20
  end
end

collectd_processes "common-processes" do
  input processes
  key "shortname"
end
