# frozen_string_literal: true

deploy_to = ""
repository_url = ""
ruby_bin_path = "/home/isucon/local/ruby/bin"
restart_command = "systemctl restart isubata.ruby.service"

file "/home/isucon/deploy_remote" do
  mode "755"
  owner "root"
  group "root"

  content <<~DEPLOY_SCRIPT
    #!/bin/bash

    set -ex

    BRANCH=${1:-master}

    PATH=/home/isucon/local/ruby/bin:$PATH

    cd /home/isucon
    if [ ! -d "/home/isucon/src" ]; then
      git clone #{repository_url} src
    fi

    cd /home/isucon/src
    git fetch origin
    git reset --hard origin/$BRANCH
    ln -sf /home/isucon/src/ruby #{deploy_to}

    cd #{deploy_to}
    #{ruby_bin_path}/bundle check || #{ruby_bin_path}/bundle install

    sudo #{restart_command}
  DEPLOY_SCRIPT
end
