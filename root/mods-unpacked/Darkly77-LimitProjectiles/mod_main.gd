extends Node

const MOD_DIR = "Darkly77-LimitProjectiles/"
const LIMITP_LOG = "Darkly77-LimitProjectiles"

var dir = ""
var ext_dir = ""


func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", LIMITP_LOG)

	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/"

	ModLoaderMod.install_script_extension(ext_dir + "entities/units/enemies/attack_behaviors/shooting_attack_behavior.gd")


func _ready()->void:
	ModLoaderLog.info("Ready", LIMITP_LOG)
