extends Node

const MOD_DIR = "Darkly77-LimitProjectiles/"
const LIMITP_LOG = "Darkly77-LimitProjectiles"

var dir = ""
var ext_dir = ""


func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", LIMITP_LOG)

	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"

	modLoader.install_script_extension(ext_dir + "entities/units/enemies/attack_behaviors/shooting_attack_behavior.gd")


func _ready()->void:
	ModLoaderUtils.log_info("Ready", LIMITP_LOG)
