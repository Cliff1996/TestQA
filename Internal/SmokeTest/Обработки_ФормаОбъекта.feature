﻿
#language: ru

@tree
@SmokeTest

Функциональность: Дымовые тесты - Обработки - ФормаОбъекта
# Конфигурация: IRP
# Версия: 2021.43.2644

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И Я закрыл все окна клиентского приложения

Сценарий: Открытие формы обработки "Проанализировать движения документа" (AnaliseDocumentMovements)

	Дано Я открываю основную форму обработки "AnaliseDocumentMovements"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки AnaliseDocumentMovements"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки AnaliseDocumentMovements"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "История данных" (DataHistory)

	Дано Я открываю основную форму обработки "DataHistory"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки DataHistory"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки DataHistory"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Мобильный стол" (MobileDesktop)

	Дано Я открываю основную форму обработки "MobileDesktop"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки MobileDesktop"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки MobileDesktop"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Мобильная инвентаризация" (MobileInvent)

	Дано Я открываю основную форму обработки "MobileInvent"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки MobileInvent"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки MobileInvent"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Рабочее место кассира" (PointOfSale)

	Дано Я открываю основную форму обработки "PointOfSale"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки PointOfSale"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки PointOfSale"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Печать этикеток" (PrintLabels)

	Дано Я открываю основную форму обработки "PrintLabels"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки PrintLabels"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки PrintLabels"
	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Обеспечение" (Procurement)

	Дано Я открываю основную форму обработки "Procurement"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки Procurement"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки Procurement"
	И Я закрываю текущее окно

//Сценарий: Открытие формы обработки "Сканирование штрихкода" (ScanBarcode)
//
//	Дано Я открываю основную форму обработки "ScanBarcode"
//	Если появилось предупреждение Тогда
//		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ScanBarcode"
//	Если имя текущей формы "ErrorWindow" Тогда
//		Тогда я вызываю исключение "Не удалось открыть основную форму обработки ScanBarcode"
//	И Я закрываю текущее окно

Сценарий: Открытие формы обработки "Рабочее место менеджера склада" (StoreKeeperWorkspace)

	Дано Я открываю основную форму обработки "StoreKeeperWorkspace"
	Если появилось предупреждение Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки StoreKeeperWorkspace"
	Если имя текущей формы "ErrorWindow" Тогда
		Тогда я вызываю исключение "Не удалось открыть основную форму обработки StoreKeeperWorkspace"
	И Я закрываю текущее окно
