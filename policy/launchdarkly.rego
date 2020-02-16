package launchdarkly
import data.launchdarkly_base
# Resource map to LaunchDarkly Ansible modules

deny[msg] {
	input.key == "registration-button-color"
	msg := "Key not allowed"
}

deny[msg] {
	input.tags == null
	msg := "Need at least one tag"
}

deny[msg] {
	count(input.tags) == 4
	msg := "You should not have 4 tags"
}
