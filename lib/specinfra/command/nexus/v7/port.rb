class Specinfra::Command::Nexus::V7::Port < Specinfra::Command::Nexus::Base::Port
  class << self
    include Specinfra::Command::Module::Ss
  end
end
