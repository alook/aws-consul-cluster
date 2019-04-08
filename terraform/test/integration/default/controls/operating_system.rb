control 'operating_system' do
  describe command('cat /etc/system-release') do
    its('stdout') { should match (/Amazon Linux release 2/) }
  end
end