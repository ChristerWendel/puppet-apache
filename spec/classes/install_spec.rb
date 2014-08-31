require 'spec_helper'

describe 'apache', :type => :class do
  let(:title) { 'apache::install' }

  context 'with default parameters' do
    it { should contain_package('apache2')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('apache2')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('apache2')
        .with_ensure('latest')
    }
  end
end
