lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "huginn_human_task_agent/version"

Gem::Specification.new do |spec|
  spec.name = "huginn_human_task_agent"
  spec.version = HuginnHumanTaskAgent::VERSION
  spec.authors = ["Akinori Musha"]
  spec.email = ["knu@idaemons.org"]

  spec.summary = "HumanTaskAgent for Huginn"
  spec.description = "Mechanical Turk workflow agent extracted from Huginn core."
  spec.homepage = "https://github.com/huginn/huginn_human_task_agent"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.4.0"

  spec.files = Dir["LICENSE.txt", "lib/**/*", "spec/**/*", "README.md", "Rakefile"]
  spec.require_paths = ["lib"]

  spec.add_dependency "huginn_agent", "~> 0.6.3"
  spec.add_dependency "rturk"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
