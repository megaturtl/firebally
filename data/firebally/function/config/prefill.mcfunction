$data modify storage firebally:config dialog.inputs[0].initial set value "$(initial_delay)"
$data modify storage firebally:config dialog.inputs[1].initial set value "$(respawn_delay)"
$data modify storage firebally:config dialog.inputs[2].initial set value "$(regular_delay)"
$data modify storage firebally:config dialog.inputs[3].initial set value "$(power)"
$data modify storage firebally:config dialog.inputs[4].initial set value "$(ramp_distance)"
$data modify storage firebally:config dialog.inputs[5].initial set value "$(speed)"
function firebally:config/show with storage firebally:config