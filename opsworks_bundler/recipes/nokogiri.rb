if node[:opsworks_bunder][:manage_package]
  ruby_block "Configuring Bundler to use system libs for Nokogiri" do
    block do
      system("sudo su - deploy -c /usr/local/bin/bundle config build.nokogiri --use-system-libraries")
    end
  end
end
