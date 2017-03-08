dirs = ['/var/www/venues','/var/www/artists']

dirs.each do |path|
  directory dirs do
    owner 'nginx'
    group 'nginx'
    mode '755'
  end
end

