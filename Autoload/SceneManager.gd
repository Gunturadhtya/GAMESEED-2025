extends Node

const START_MENU = preload("res://UI/Menus/Start Menu/scn_start_menu.tscn")
const SAVE_LOAD_MENU = preload("res://UI/Menus/Save Load Menu/scn_save_load_menu.tscn")
const EMPTY_SAVE_LOAD_MENU = preload("res://UI/Menus/Save Load Menu/Empty Save Menu/empty_save_menu.tscn")

const STAGE_1 = preload("res://Gameplay/Stages/Stage 1/scn_stage_1.tscn")
const STAGE_2 = preload("res://Gameplay/Stages/Stage 2/scn_stage_2.tscn")
const STAGE_3 = preload("res://Gameplay/Stages/Stage 3/scn_stage_3.tscn")
const STAGE_4 = preload("res://Gameplay/Stages/Stage 4/scn_stage_4.tscn")
const STAGE_5 = preload("res://Gameplay/Stages/Stage 5/scn_stage_5.tscn")
const WIN_STAGE = preload("res://Gameplay/Stages/Stage Win/scn_win.tscn")
const LOSE_STAGE = preload("res://Gameplay/Stages/Stage Lost/scn_lost.tscn")

var previous_scene = ""

# load scene manager
# you only need to change one script to edit the path
func load_scene(path: String):
	var scene_path
	match path:
		"start":
			scene_path = START_MENU
		"saveload":
			scene_path = SAVE_LOAD_MENU
		"emptysave":
			scene_path = EMPTY_SAVE_LOAD_MENU
		"1":
			scene_path = STAGE_1
		"2":
			scene_path = STAGE_2
		"3":
			scene_path = STAGE_3
		"4":
			scene_path = STAGE_4
		"5":
			scene_path = STAGE_5
		"win":
			scene_path = WIN_STAGE
		"lose":
			scene_path = LOSE_STAGE
		_:
			print("Wrong Path : ", path)
			pass
	get_tree().change_scene_to_packed(scene_path)
