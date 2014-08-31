require 'spec_helper'

describe 'apache::loadmodule', :type => :define do
  let(:title) { 'module' }
  it { should contain_exec('/usr/sbin/a2enmod module')
      .with_creates('/etc/apache2/mods-enabled/module.load')
  }
end
