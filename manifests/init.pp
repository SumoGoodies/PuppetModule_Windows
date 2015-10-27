class sumo {
  file {
    'c:/sumo':
      ensure => 'directory';
    'c:/sumo/sumo.conf':
      ensure => present,
      source => 'puppet:///modules/sumo/sumo.conf';
    'c:/sumo/sumo.json':
      ensure => present,
      source => 'puppet:///modules/sumo/sumo.json';
  }
  exec { 'Download Sumo':
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -InputFormat none -Command "&{(new-object net.webclient).DownloadFile(\"https://collectors.sumologic.com/rest/download/win64\",\"c:/sumo/sumo.exe\")}"',
    cwd     => 'c:/sumo',
    creates => "c:/sumo/sumo.exe";
  }
  exec { 'Install Sumo':
    command => 'c:\Windows\System32\cmd.exe /c c:\sumo\sumo.exe -q',
    require => Exec['Download Sumo'],
  }
}
