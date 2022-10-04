# README

Коротка інформація про проект:

Сайт компанії котрий має дві сторони: 
зовнішня сторона - для користувачів
внутрішня сторона - для працівників

Склад зовнішньої сторони: 
* Про нас
* Бібліотека (там спеціалісти компанії публікують статті в котрих розкривають як вони вирішували ту чи іншу задачу - так би мовити маленький урок для інших, хто зіштовхнеться з такими проблемами)
* Блог (тут публікується краткий екскурс життя компанії)
* Форум - де  кожен може створити тему (задати своє питання), а інші люди можуть на нього відповісти
* Внутрішні проекти - сторінка де розповідається про проекти (продукт власний) компанії
* Зовнішні проекти - сторінка де аутсорс проекти
* Контакти - зв'язатися з нами
* Команда - сторінка де відображаються лише фото та спеціальність кожного члена команди
* Кар'єра - сторінка де відображаються вакансії
* Сторінка де продаються підписки на продукти компанії

Навіщо?:
Сторінки: Бібліотека та Форум - створені для:
1. Дати вагу компанії (що не "одностраничник")
2. Спеціалісти шукаючи відповідь на своє питання, можуть натрапити на сайт, ознайомитись (можливо купити підписку на продукт компанії, чи записатися на співбесіду, або замовити послуги)
3. Три букви SEO - чим більше сторінок унікального контенту, тим більша релевантність сайту, та вища репутація
4. Більше переходів на сайт - більша впізнаваність бренду

Склад внутрішньої сторони:
* Дашборд
* Вкладка Користувач:
  * Профайл
  * Повідомлення (private та public чати)
  * Документи (в model user є стовбець level) - тут відображається шпаргалка з інформацією, що потрібно прокачати щоб підвищити свій рівень
  * Налаштування (Профайлу)
* Вкладка Інфо:
  * Форум - форум створюється спочатку на зовнішній частині, але поки тут не пройде можерацію, там він не з'явиться + є зведена таблиця
  * Блог - тут створюється блог, та є зведена таблиця всіх блогів
  * Бібліотека - тут створюється стаття, та є зведена таблиця
* Вкладка Рахункова (все, що зв'язано з фінансами):
  * Користувачі(ЗП): 
    * Перша таблиця колонки: Місяці (рік над місяцями вказується) / (2 рядки): Кіл-сть працівників, Сумма всіх ЗП. 
    * Друга таблиця (при натиску show конкретного місяця)(6 колонок): ФІ працівника, його спеціальність, його статус, кількість проектів на котрих працює (активні проекти), скільки годин відпрацював, зп
    * Третя таблиця (при натиску show користувача) колоноки: Місяці / (n рядок): ЗП, Кожен проект на котрому працює/працював (в комірці вказуємо скільки компанія заплатила за данного спеціаліста в той чи інший місяць)
  * Клієнти:
    * Перша таблиця колонки: Місяці (рік над місяцями вказується) / (2 рядки): Кіл-сть працівників на проекті, сумма грошей сплачених
    * Друга таблиця (при натиску show конкретного клієнта) колоноки: Місяці / (n рядок): Скільки яких спецяалістів на проекті (фронт - 5, бек - 3), сумма Сплачених грошей (окремо фронт, бек, дизайнери), скільки якого левел спеціалістів і скільки за кожну левел группу заплатили
    * Третя таблиця (при натиску show конкретного місяця) (5 колонок): ФІ працівника, його спеціальність, його левел, скільки годин відпрацював на данному проекті, скільки компанії заплатили за нього
* Команда - більш розширена сторінка з можливістю клацнувши на іконку працівника - перейти на його профайл
* Продукти - більш розширена сторінка + там є зведена саблиця і можливість редагування
* Контакти - зведена таблиця всіх поданних запитів через форму на зовнішній частині


Коротка інформація, що зроблено:

використано Gem:
gem "tailwindcss-rails"
gem "devise"
gem "pagy"
gem "view_component"
gem "ransack"
gem "chartkick"

використовується: ActiveStorage (зображення)

Зовнішня сторона:
* 5% Про нас - створена сторінка, прописаний rout
* 100% Бібліотека - прописані model, view, controller, зроблена пагінація, зроблений фільтр пошуку
* 100% Блог  - прописані model, view, controller, зроблена пагінація
* 100% Форум - прописані model, view, controller, зроблена пагінація, зроблений фільтр пошуку
* 100% Внутрішні проекти - прописані model, view, controller, зроблена пагінація
* 100% Зовнішні проекти - прописані model, view, controller, зроблена пагінація
* 100% Контакти - прописані model, view, controller
* 100% Команда - прописані model, view, controller
* 5% Кар'єра - створена сторінка, прописаний rout
* 0% Сторінка де продаються підписки на продукти компанії

Склад внутрішньої сторони:
* 5% Дашборд - створена сторінка, прописаний rout
* Вкладка Користувач:
    * 60% Профайл - прописані model, controller (постійно доповнюється db новими колонками, наприклад ще треба зробити рейтинг, де всі анонімно будуть кожному виставляти раз в квартал оціночку, щоб можно було побачити токсичних людей зразу) + з шаблоном ще не працював
    * 100% Повідомлення - прописані model, view, controller
    * 5% Документи - створена сторінка, прописаний rout
    * 60% Налаштування (Профайлу) - візуал + постійно нові колонки db
* Вкладка Інфо:
    * 100% Форум - прописані model, view, controller
    * 100% Блог - прописані model, view, controller
    * 100% Бібліотека - прописані model, view, controller
* Вкладка Рахункова (все, що зв'язано з фінансами):
    * 10% Користувачі(ЗП): - тести
        * Перша таблиця колонки: Місяці (рік над місяцями вказується) / (2 рядки): Кіл-сть працівників, Сумма всіх ЗП.
        * Друга таблиця (при натиску show конкретного місяця)(6 колонок): ФІ працівника, його спеціальність, його статус, кількість проектів на котрих працює (активні проекти), скільки годин відпрацював, зп
        * Третя таблиця (при натиску show користувача) колоноки: Місяці / (n рядок): ЗП, Кожен проект на котрому працює/працював (в комірці вказуємо скільки компанія заплатила за данного спеціаліста в той чи інший місяць)
    * 0% Клієнти:
        * Перша таблиця колонки: Місяці (рік над місяцями вказується) / (2 рядки): Кіл-сть працівників на проекті, сумма грошей сплачених
        * Друга таблиця (при натиску show конкретного клієнта) колоноки: Місяці / (n рядок): Скільки яких спецяалістів на проекті (фронт - 5, бек - 3), сумма Сплачених грошей (окремо фронт, бек, дизайнери), скільки якого левел спеціалістів і скільки за кожну левел группу заплатили
        * Третя таблиця (при натиску show конкретного місяця) (5 колонок): ФІ працівника, його спеціальність, його левел, скільки годин відпрацював на данному проекті, скільки компанії заплатили за нього
* 100% Команда - прописані model, view, controller
* 100% Продукти - прописані model, view, controller
* 100% Контакти - прописані model, view, controller

+ за допомогою work_group (user) поділити, хто до чого має доступ, хто що може редагувати
+ додати до Users name and last_name - default.