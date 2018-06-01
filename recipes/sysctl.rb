node['sysctl'].each do |entry|
  sysctl_param entry['key'] do
    value entry['value']
    ignore_error entry.fetch('ignore_error', false)
    action entry.fetch('action', 'apply').to_sym
  end
end
