name 'themis-finals-utils'
description 'Themis Finals utility recipes'
version '1.2.0'

recipe 'themis-finals-utils::install_ruby', 'Install ruby'

depends 'rbenv', '1.7.1'
depends 'instance', '~> 2.0.0'
depends 'sysctl', '~> 1.0.4'
