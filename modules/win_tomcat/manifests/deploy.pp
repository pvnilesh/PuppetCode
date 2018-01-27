# to deploy war file to taomcat root folder on windows

class win_tomcat::deploy (
  $catalina_home="C:/Program Files/Apache Software Foundation/tomcat/apache-tomcat-8.5.12",
  $fileName="SampleWebApp.war",
  $sourceDir="C:/Jenkins/tmp",
) {
  file { "${catalina_home}/webapps/${fileName}":
    ensure => file,
    source => "${sourceDir}/${fileName}",
  }
}
