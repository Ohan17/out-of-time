extends AudioStreamPlayer


const TRACK_2: = preload("res://assets/audios/organs2.wav")
const TRACK_3: = preload("res://assets/audios/organs3.wav")
const TRACK_4: = preload("res://assets/audios/organs4.wav")


func play_track(track: int, from_position: = 0.0) -> void:
	match track:
		2:
			if stream == TRACK_2:
				return
			stream = TRACK_2
		3:
			if stream == TRACK_3:
				return
			stream = TRACK_3
		4:
			if stream == TRACK_4:
				return
			stream = TRACK_4
		_:
			return
	play(from_position)
