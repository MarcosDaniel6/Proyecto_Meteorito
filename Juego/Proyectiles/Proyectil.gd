extends Area2D
#Proyectil.gd
class_name Proyectil

## Atributos
var velocidad:Vector2 = Vector2.ZERO
var danio:float

## Metodos
func _physics_process(delta: float) -> void:
	position += velocidad * delta

##Constructor
func crear(pos: Vector2,dir: float, vel: float, danio_p: int) -> void:
	position = pos
	rotation = dir
	velocidad = Vector2(vel, 0).rotated(dir)
	danio = danio_p

func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
