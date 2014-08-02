if node[:opsworks_bunder][:manage_package]
  ruby_block "Configuring Bundler to use system libs for Nokogiri" do
    block do
      system("echo 'NOKOGIRI_USE_SYSTEM_LIBRARIES=true' >> /etc/profile")
      system("echo 'NOKOGIRI_USE_SYSTEM_LIBRARIES=true' >> /etc/environment")
      system("sudo su - deploy -c /usr/local/bin/bundle config build.nokogiri --use-system-libraries")
    end
  end
end
