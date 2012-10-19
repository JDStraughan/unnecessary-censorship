# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "unnecessary_censorship"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["JDStraughan"]
  s.date = "2012-10-19"
  s.description = "Unnecessarily censor a string of english words.  Extends String class for simple integration into any Ruby project."
  s.email = "jdstraughan@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/en_us/adjectives.txt", "lib/en_us/present_participles.txt", "lib/en_us/verbs.txt", "lib/unnecessary_censorship.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/en_us/adjectives.txt", "lib/en_us/present_participles.txt", "lib/en_us/verbs.txt", "lib/unnecessary_censorship.rb", "spec/spec_helper.rb", "spec/unnecessary_censorship/unnecessary_censorship_spec.rb", "unnecessary_censorship.gemspec"]
  s.homepage = "http://github.com/jdstraughan/unnecessary-censorship"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Unnecessary_censorship", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "unnecessary_censorship"
  s.rubygems_version = "1.8.17"
  s.summary = "Unnecessarily censor a string of english words."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
