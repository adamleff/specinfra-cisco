class Specinfra::Helper::DetectOs::Nexus < Specinfra::Helper::DetectOs
  def detect
    # CentOS has a os-release file too, but this should do the right thing
    if File.exists?('/etc/os-release')
      contents = {}
      File.read('/etc/os-release').split.collect {|x| x.split('=')}.each {|x| contents[x[0]] = x[1]}
      print "!!>> Inside Nexus Detection"
      # This test should only work on a nexus platform in the native OS
      # It will fail in a guest/container shell, which should be picked up elsewhere
      if contents['CISCO_RELEASE_INFO'] && contents['CISCO_RELEASE_INFO'] == "/etc/os-release"
        { :family => 'nexus', :release => contents['VERSION'] }
      end
    end
  end
end
