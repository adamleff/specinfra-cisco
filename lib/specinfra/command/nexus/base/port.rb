class Specinfra::Command::Nexus::Base::Port < Specinfra::Command::Base::Port
  class << self
    include Specinfra::Command::Module::Ss
  end
end
