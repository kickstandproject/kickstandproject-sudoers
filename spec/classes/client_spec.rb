require 'spec_helper'

describe 'sudoers::client' do
  context 'on Ubuntu 12.04 (Precise)' do
    let(:facts) { { 
      :lsbdistcodename  => 'precise',
      :lsbdistrelease   => '12.04',
      :operatingsystem  => 'Ubuntu',
    } }

    it do
      should contain_file('/etc/sudoers').with({
        'ensure'  => 'file',
        'group'   => 'root',
        'mode'    => '0640',
        'owner'   => 'root',
      })
    end

    it do
      should contain_file('/etc/sudoers.d').with({
        'ensure'  => 'directory',
        'group'   => 'root',
        'mode'    => '0640',
        'owner'   => 'root',
      })
    end

    it do
      should contain_package('sudo').with_ensure('present')
    end
  end
end

# vim:sw=2:ts=2:expandtab:textwidth=79
