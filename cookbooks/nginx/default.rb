# frozen_string_literal: true

package "nginx"

service "nginx" do
  action :enable
end

remote_file "/etc/nginx/nginx.conf" do
  owner "root"
  group "root"
  mode "644"
  notifies :reload, "service[nginx]"
end
