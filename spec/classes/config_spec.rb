require 'spec_helper'

describe 'nginx::config' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      #it { is_expected.to compile }#
    end
  end
  #context 'with defaults' do#
         # it do
         #   is_expected.to contain_file('nginx_conf').with(
         #     ensure: 'present',
         #     path: '/etc/nginx/nginx.conf',
         #     mode: '0644',
         #     owner: 'root',
         #     group: 'root'
         #   )
         # end
  #end#
end
