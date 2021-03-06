default['yum']['remi-php55']['repositoryid'] = 'remi-php55'
default['yum']['remi-php55']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
default['yum']['remi-php55']['gpgcheck'] = true
default['yum']['remi-php55']['enabled'] = true
default['yum']['remi-php55']['managed'] = true

case node['platform']
when 'fedora'
  default['yum']['remi-php55']['baseurl'] = "http://rpms.famillecollet.com/fedora/#{node['platform_version'].to_i}/php55/$basearch/"
  default['yum']['remi-php55']['description'] = "Les RPM de remi de PHP 5.5 pour Fedora Linux #{node['platform_version'].to_i} - $basearch"
else
  case node['platform_version'].to_i
  when 5
    default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/php55/$basearch/'
    default['yum']['remi-php55']['description'] = 'Les RPM de remi de PHP 5.5 pour Enterprise Linux 5 - $basearch'
  when 6, 2013, 2014, 2015
    default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/php55/$basearch/'
    default['yum']['remi-php55']['description'] = 'Les RPM de remi de PHP 5.5 pour Enterprise Linux 6 - $basearch'
  when 7
    default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/php55/$basearch/'
    default['yum']['remi-php55']['description'] = 'Les RPM de remi de PHP 5.5 pour Enterprise Linux 7 - $basearch'
  end
end
