﻿#language: ru

@tree

Функционал: Проверка расположения элементов в форме Организаций

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расположения элементов в форме Организаций

	И В командном интерфейсе я выбираю "Справочники" "Организации"
	Тогда открылось окно "Организации"
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно "Организация (создание)"
	
