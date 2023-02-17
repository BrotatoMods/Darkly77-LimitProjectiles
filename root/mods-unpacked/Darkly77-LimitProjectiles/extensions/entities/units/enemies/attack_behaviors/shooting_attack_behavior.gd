extends "res://entities/units/enemies/attack_behaviors/shooting_attack_behavior.gd"


func shoot()->void :
	var projectiles_on_screen = _projectiles_node.get_children().size()
	if projectiles_on_screen > 25: # I rarely got over 30 in my tests
		# Reset cooldown
		_current_cd = get_cd()
		print("Cooldown reset, too many projectiles! Counted: " + str(projectiles_on_screen))
	else:
		.shoot()
