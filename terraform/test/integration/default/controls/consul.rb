control 'consul' do
  describe processes('consul') do
    it { should exist }
  end
  describe http('http://localhost:8500/ui/', open_timeout: 5, read_timeout: 5) do
    its('status') { should eq 200 }
  end
end