extends Node2D

var clicouKB1 = false
var clicouKB2 = false
var clicouKB3 = false
var mouseKB4 = false
var selecaoKB4 = false

func _ready():
	pass
#Quando clicar na seta, troca para a cena principal do escritório
func _on_Button_pressed():
	 get_tree().change_scene("res://Telas/main.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_click") and mouseKB4 == true:
		print("entrou")
		$KB4/AS4.scale.x = 0.75
		$KB4/AS4.scale.y = 0.75
		


#Todos esses fazem a mesma coisa para cada um dos 4 personagens
#Quando o mouse entra, coloca a imagem colorida, e quando o mouse sai, troca para a imagem preta

func _on_KB4_mouse_entered():
	$KB4/AS4.frame = 1
	mouseKB4 = true
func _on_KB4_mouse_exited():
	if selecaoKB4 == false:
		$KB4/AS4.frame = 0
		mouseKB4 = false
	else:
		$KB4/AS4.frame = 1

func _on_KB3_mouse_entered():
	 $KB3/AS3.frame = 1
func _on_KB3_mouse_exited():
	 $KB3/AS3.frame = 0

func _on_KB2_mouse_entered():
	$KB2/AS2.frame = 1
func _on_KB2_mouse_exited():
	$KB2/AS2.frame = 0

func _on_KB1_mouse_entered():
	$KB1/AS1.frame = 1
func _on_KB1_mouse_exited():
	$KB1/AS1.frame = 0
