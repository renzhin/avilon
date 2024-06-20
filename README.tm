На проекте используется Python 3.9.13

1. Создаем виртуальное окружение в директории backend
cd backend/
python -m venv .venv

2. Активируем окружение
Windows: source .venv/Scripts/activate
Linux: source .venv/bin/activate

3. Устанавливаем базовые зависимости и CMS
python -m pip install --upgrade pip
pip install -r requirements.txt

4. Устанавливаем дополнитеьные пакеты, необходимые для CMS 
pip install -r requirements.in

5. Выполняем миграции
python manage.py migrate

6. Создаем суперпользователя
winpty python manage.py createsuperuser

7. Запускаем отладочный сервер 127.0.0.1
python manage.py runserver