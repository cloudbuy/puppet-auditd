require_relative '../../../../spec_helper'

describe 'auditd', :type => :class do
  it do
    should contain_file('/etc/audit/audit.rules')
    should contain_file('/etc/audit/auditd.conf')
    should contain_package('auditd').with_ensure('installed')
    should contain_service('auditd')
  end
end