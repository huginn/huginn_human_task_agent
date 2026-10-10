#!/usr/bin/env rake

require "huginn_agent"
require "huginn_agent/spec_runner"

module PinnedErectorForSpecs
  def patch
    super

    File.open("spec/huginn/Gemfile", "a") do |gemfile|
      gemfile.puts %(gem "erector", github: "dsander/erector", ref: "821c2fa9174b56cc39e203883d83b18b60912a36")
    end
  end
end

HuginnAgent::SpecRunner.prepend(PinnedErectorForSpecs)

HuginnAgent.load_tasks(branch: "master", remote: "https://github.com/huginn/huginn.git")
