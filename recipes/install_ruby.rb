id = 'themis-finals-utils'

instance = ::ChefCookbook::Instance::Helper.new(node)

node.default['rbenv']['group_users'] = [
  instance.root,
  instance.user
]

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

ENV['CONFIGURE_OPTS'] = '--disable-install-rdoc'

rbenv_ruby node[id]['ruby']['version'] do
  ruby_version node[id]['ruby']['version']
  global true
end

rbenv_gem 'bundler' do
  ruby_version node[id]['ruby']['version']
  version node[id]['bundler_version']
end
