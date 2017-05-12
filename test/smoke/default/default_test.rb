# check that pandaseq folder exists
describe file('/usr/bin/pandaseq') do
  it { should be_file }
end

# Check that pandaseq script is in the path
describe command('which pandaseq') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match('/usr/bin/pandaseq') }
end

# Check that pandaseq runs
# Command works but exit status is 1, and STDERR not STDOUT - oh my!
describe command('pandaseq -v') do
  its('exit_status') { should eq 1 }
  its('stderr') { should match('pandaseq 2.11 ') }
end
