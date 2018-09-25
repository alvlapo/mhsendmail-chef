# # encoding: utf-8

# Inspec test for recipe mhsendmail::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/usr/local/bin/mhsendmail') do
  it { should exist }
  it { should be_file }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end
