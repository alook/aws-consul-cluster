control 'dnsmasq' do
  describe processes('dnsmasq') do
    it { should exist }
  end
end