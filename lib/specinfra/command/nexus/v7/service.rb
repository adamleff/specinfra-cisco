class Specinfra::Command::Nexus::V7::Service < Specinfra::Command::Nexus::Base::Service
  class << self
    include Specinfra::Command::Module::Service::Init
  end
end