#
class win_nexus::fetch (
  $group_id,
  $artifact_id,
  $version,
  $repository,
  $extension,
  $nexus_url,
  $username,
  $password,
  $target_folder,
) {
  exec { 'fetch':
    command => "C:\\windows\\system32\\cmd.exe /c \"python scripts\\fetchArtifact.py -g ${group_id} -a ${artifact_id} -r ${repository} -e ${extension} -n ${nexus_url} -t ${target_folder} -v ${version}\""
  }
}