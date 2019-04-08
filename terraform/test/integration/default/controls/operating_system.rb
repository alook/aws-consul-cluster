control 'operating_system' do
    describe command('lsb_release -a') do
      its('stdout') { should match (/Amazon/) }
    end
  end