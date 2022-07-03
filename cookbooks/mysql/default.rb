# frozen_string_literal: true

service "mysql"

%w[
  /etc/mysql/my.cnf
].each do |file|
  remote_file file do
    owner "root"
    group "root"
    mode "644"
    notifies :restart, "service[mysql]"
  end
end
