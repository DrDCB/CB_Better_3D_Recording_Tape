extends Node

func _ready():
	var tape2d = get_node("/root/MenuHelper/GiveTapeMenu/Scroller/OverscanMarginContainer/CenterContainer/Tape2DContainer/Tape2D")
	var tape = tape2d.tape
	var dcbtape = $"../recording_tape"
	var matovr = dcbtape.get_surface_material(0)
	if tape.is_bootleg():
		if !matovr:
			var newmat = SpatialMaterial.new()
			var tex = preload("res://models/ui/recording_tape/materials/dcb_tape_bootleg.png")
			newmat.set_texture(SpatialMaterial.TEXTURE_ALBEDO, tex)
			dcbtape.set_surface_material(0, newmat)
	else:
		if matovr:
			matovr = null
