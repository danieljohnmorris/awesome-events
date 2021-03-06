# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{awesome-events}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Morris"]
  s.date = %q{2009-03-05}
  s.description = %q{TODO}
  s.email = %q{daniel.john.morris@googlemail.com}
  s.files = ["VERSION.yml", "lib/awesome_events.rb", "lib/upcoming", "lib/upcoming/group.rb", "lib/util", "lib/util/util.rb", "test/awesome_events_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/danieljohnmorris/awesome-events}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
