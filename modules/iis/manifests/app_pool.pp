#
# Parameters
# Examples

class iis::app_pool (
  $name,
  $ensure='present',
  $state='started',
  $managed_pipeline_mode='Integrated',
  $managed_runtime_version='v4.0',
) {  
	iis_application_pool { $name:
		ensure                  => $ensure,
		state                   => $state,
		managed_pipeline_mode   => $managed_pipeline_mode,
		managed_runtime_version => $managed_runtime_version,
	}
}
