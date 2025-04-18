﻿#language: ru

@tree

Функционал: Отчет Остатки товаров

Проверка на эталонной базе

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
	* Подготовка и открытие отчета
		Дано Я открываю навигационную ссылку "e1cib/app/Отчет.ОстаткиТоваровНаСкладах"
		Тогда открылось окно "Остатки товаров*"
				
	* Выбор основного варианта
		Когда я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
		И открылось окно 'Выбор варианта отчета'
		И в таблице "СписокНастроек" я перехожу к строке:
			| 'Представление' |
			| 'Основной'      |
		И я нажимаю на кнопку с именем 'Загрузить'
		Тогда открылось окно 'Остатки товаров'
		И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройки'
				
	* Формирование и проверка	
		И я нажимаю на кнопку с именем 'ФормаСформировать'
		И я жду, что в табличном документе 'Результат' ячейка 'R28C6' станет равна '4 617,00' в течение 20 секунд
		И табличный документ "Результат" равен макету "ОтчетОстаткиТоваровОсновнойРазворотПоСкладу" по шаблону
