"""Скрипт для заполнения данными таблиц в БД Postgres."""
import psycopg2
import csv


def csv_reader(path):
    """Читает CSV-файл и возвращает объект со списками значений.
    Функция предполагает наличие header в первой строке CSV-файла и пропускает её"""
    with open(path, 'r', encoding='utf-8', newline='') as csvfile:
        next(csvfile)
        reader = csv.reader(csvfile)
        return reader


# csv_reader('./north_data/customers_data.csv')
