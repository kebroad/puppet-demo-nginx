require 'spec_helper'

describe 'nginx' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }
    
      it { is_expected.to compile }
      context 'nginx::config' do
        it do
          is_expected.to contain_file('nginx_conf').with(
            ensure: 'file',
            path: '/etc/nginx/nginx.conf',
            mode: '0664',
            owner: 'root',
            group: 'root'
          )
        end
      end
    end
  end
end
