﻿#language: ru

@tree

Функционал: Работа с картинками в справочнике Товары

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Работа с картинками в справочнике Товары
	* Открытие элемента
		Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df3"
	* Очистка существующей картинки
		Когда открылось окно 'Пинетки (Товар)'
		И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
	* Проверка
		Тогда у элемента формы с именем 'Картинка' текст редактирования стал равен ""
		И элемент формы с именем 'ФайлКартинки' стал равен ""
	* Установка картинки
		Дано я нажимаю кнопку выбора у поля с именем 'ФайлКартинки'
		И открылось окно "Файлы"
		И в таблице 'Список' я перехожу к строке:
			| "Код"       | "Наименование" |
			| "000000011" | "Пинетки"      |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И открылось окно 'Пинетки (Товар) *'
		И я нажимаю на кнопку с именем 'ОбновитьКартинку'
	* Проверка
		Тогда элемент формы с именем 'ФайлКартинки' стал равен "Пинетки"
		И у элемента формы с именем 'Картинка' текст редактирования стал равен "e1cib/data/Справочник.ХранимыеФайлы.ДанныеФайла?ref=8ca1000d8843cd1b11dc8eb43bdcf26d"
