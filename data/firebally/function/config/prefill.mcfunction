$data modify storage firebally:config dialog.inputs[0].initial set value "$(cooldown)"
$data modify storage firebally:config dialog.inputs[1].initial set value "$(power)"
$data modify storage firebally:config dialog.inputs[2].initial set value "$(ramp_distance)"
$data modify storage firebally:config dialog.inputs[3].initial set value "$(speed)"
$data modify storage firebally:config dialog.inputs[4].initial set value "$(start_delay)"
# Expand the dialog only after the initial values have been written
function firebally:config/show with storage firebally:config