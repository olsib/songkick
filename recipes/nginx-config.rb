cookbook_file "Copy nginx config" do
  group "root"
  mode "0644"
  owner "root"
  path "/etc/nginx/nginx.conf"
  source "nginx.conf"
end

service "nginx" do
  action :restart
end
