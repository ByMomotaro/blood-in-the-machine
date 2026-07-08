extends Node

#region Constants
const MUSIC_PATH := "res://game/sound/music/"
const SFX_PATH := "res://game/sound/sfx/"

const MUSIC_EXTENSION := ".wav"
const SFX_EXTENSION := ".wav"

const MUSIC_BUS := "Music"
const SFX_BUS := "SFX"
#endregion
#region Variables
var music_cache: Dictionary = {}
var sfx_cache: Dictionary = {}

var music_player: AudioStreamPlayer
var sfx_player: AudioStreamPlayer

var current_theme
#endregion

func _ready() -> void:
	# Creates the Music Player, assigns the Bus Name and instantiates a Music Player
	music_player = AudioStreamPlayer.new()
	music_player.bus = MUSIC_BUS
	add_child(music_player)
	# Creates the Music Player, assigns the Bus Name and instantiates a SFX Player
	sfx_player = AudioStreamPlayer.new()
	music_player.bus = SFX_BUS
	add_child(sfx_player)

#region Functions to control the Music Player
func play_music(name: String, restart := false):
	var stream := load_music(name)
	current_theme = name

	if stream == null:
		return

	if !restart:
		if music_player.playing and music_player.stream == stream:
			return

	# Stops the current playing music and starts the new music
	music_player.stop()
	music_player.stream = stream
	music_player.play()

func stop_music():
	music_player.stop()

func pause_music():
	music_player.stream_paused = true

func resume_music():
	music_player.stream_paused = false
#endregion
#region Functions to control the SFX
func play_sfx(name: String):
	var stream := load_sfx(name)

	if stream == null:
		return

	sfx_player.stream = stream
	sfx_player.play()

func stop_sfx(name: String):
	sfx_player.stop()
#endregion
#region Functions to load the Music and SFX Files
func load_music(name: String) -> AudioStream:
	if music_cache.has(name):
		return music_cache[name]

	var path := MUSIC_PATH + name + MUSIC_EXTENSION

	if !ResourceLoader.exists(path):
		push_warning("Musik nicht gefunden: " + path)
		return null

	var stream := load(path)
	music_cache[name] = stream
	return stream

func load_sfx(name: String) -> AudioStream:
	if sfx_cache.has(name):
		return sfx_cache[name]

	var path := SFX_PATH + name + SFX_EXTENSION

	if !ResourceLoader.exists(path):
		push_warning("Soundeffekt nicht gefunden: " + path)
		return null

	var stream := load(path)
	sfx_cache[name] = stream
	return stream
#endregion
