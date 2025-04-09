﻿#language: ru

@tree

Функционал: Создание документа Заказ

Как Менеджер по продажам я хочу
выполнить создание документа Заказ с услугой
чтобы сформировать заказ для покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документа Заказ
*Закрытие всех открытх окон
	И я закрываю все окна клиентского приложения
* Открытие формы создания документа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Оптовая'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000016' | 'Тайфун-12'    |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку с именем 'ФормаИерархическийСписок'
	И я нажимаю на кнопку с именем 'ФормаУровеньВверх'
	И я нажимаю на кнопку с именем 'ФормаУровеньВверх'
	И я нажимаю на кнопку с именем 'ФормаУровеньВверх'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000036' | 'Услуги'       |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000037' | 'Доставка'       |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения табличной части
	Тогда таблица "Товары" содержит строки:
		| 'Товар'      | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Тайфун-12 ' | '7 000,00' | '2'          | '14 000,00' |
		| 'Доставка '  | '200,00'   | '1'          | '200,00'    |
	И я нажимаю на кнопку "Записать"
* Номер
	И я запоминаю значение поля "Номер" как "$Номер$"
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
* Проверка создания документа
	И таблица "Список" содержит строки:
		| 'Номер'   |
		| '$Номер$' |
// * Удаление созданного документа
// 	И в таблице "Список" я перехожу к строке:
// 		| 'Номер'     |
// 		| '$Номер$'   |
// 	И в таблице 'Список' я удаляю строку
// 	Тогда открылось окно '1С:Предприятие'
// 	И я нажимаю на кнопку с именем 'Button0'
*Закрытие всех открытх окон
	И я закрываю все окна клиентского приложения
