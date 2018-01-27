node default {
  class { 'win_tomcat::deploy':
    fileName  => "SampleWebApp.war",
    sourceDir => "C:/Jenkins/nilesh/target",
  }
}