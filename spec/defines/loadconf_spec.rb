require 'spec_helper'

describe 'apache::loadconf', :type => :define do
  let(:title) { 'config' }
  it { should contain_exec('/usr/sbin/a2enconf config')
      .with_creates('/etc/apache2/conf-enabled/config.conf')
  }
end
