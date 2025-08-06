extends Spatial

func _ready():
	# Hide the vanilla tape mesh, rather than editing the scene to delete it.
	var origtape = $"../cassette_tape"
	origtape.visible = false
	# Move the camera back a touch so it isn't right up against the tapes. Vanilla Z position is 46.
	var cam = $"../../DefaultVirtualCamera"
	cam.transform.origin.z = 48
