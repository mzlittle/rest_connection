# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rest_connection}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Deininger"]
  s.date = %q{2010-01-18}
  s.description = %q{provides rest_connection}
  s.email = %q{jeremy@rubyonlinux.org}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
     "Rakefile",
     "VERSION",
     "config/rest_api_config.yaml.sample",
     "examples/dev_setup.rb",
     "examples/relaunch_deployment.rb",
     "examples/right_scale_ec2_instances_api_test.rb",
     "examples/run_ebs_sequence.rb",
     "examples/run_mysql_chef_sequence.rb",
     "examples/run_php_chef_sequence.rb",
     "examples/set_deployment_template_href.rb",
     "lib/rest_connection.rb",
     "lib/rest_connection/ssh_hax.rb",
     "lib/rightscale_api_base.rb",
     "lib/rightscale_api_resources.rb",
     "rest_connection.gemspec"
  ]
  s.homepage = %q{http://github.com/jeremyd/rest_connection}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{lib for restful connections to the rightscale api}
  s.test_files = [
    "examples/dev_setup.rb",
     "examples/relaunch_deployment.rb",
     "examples/right_scale_ec2_instances_api_test.rb",
     "examples/run_ebs_sequence.rb",
     "examples/run_ebs_terminate.rb",
     "examples/run_mysql_chef_sequence.rb",
     "examples/run_php_chef_sequence.rb",
     "examples/set_deployment_template_href.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

