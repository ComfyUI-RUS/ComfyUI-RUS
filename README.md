# "ComfyUI RUS"
Здесь версия для тех, у кого в системе уже установлены **Python** и **Git**  (стабильная)

>Обновлено до Python 3.11

<a href="https://github.com/ComfyUI-RUS/ComfyUI-RUS">**>>> НЕ портабельная <<<**</a>

Портабельная версия, не требующая установленного **Python** и **Git** (с некоторыми ограничениями по пакетам)

<a href=https://github.com/ComfyUI-RUS/ComfyUI-RUS-portable>>>> **Портабельная версия** (python 3.11.6) <<<</a>

---

В пакете находится три bat-файла:

- **install.bat** 
- **run.bat**
- **update.bat**

---

Для НЕ портабельной версии:

>Перед началом установки измените в 5 строке файла **install.bat** значение переменной:
>
>- **set python=c:\p311\python.exe**   
>
>на реальное расположение питона в вашей системе!!!
>
>**Git** должен быть установлен в системе и быть в **PATH**!
>
>Git можно скачать тут: https://git-scm.com/download/win
>
>Python 3.11 можно скачать тут: https://www.python.org/ftp/python/3.11.8/python-3.11.8-amd64.exe

---

Для автоматической установки системы **ПЕРВЫМ** запустите файл **install.bat**.

>Повторный запуск этого файла начнет установку заново!
>После окончания установки уберите в архив BAT-файлы, а особенно файл **install.bat** уберите из папки запуска!

---

Файл **install.bat** сам скачивает и устанавливает все необходимые компоненты, пакеты питона и модули, сам все настраивает и, в конце установки, самостоятельно запускает браузер и подключает его к **"ComfyUI RUS"**.

---

- **run.bat** служит для запуска уже установленной системы
- **update.bat** для обновления версий самого **"ComfyUI RUS"**, и устанавливаемых этим инсталлятором расширений.

---

Для НЕ портабельной версии:

>Установленная таким образом система является НЕ-портабельно, т.к. привязана к системе из-за Git-а и системного питона. Установка создает "виртуальное окружение" пиитона "venv" в корне папки **"ComfyUI"**, и все пакеты, устанавливаеме инсталлятором устанавливаются именно в это **"venv"**, которое, в свою очередь, имеет в своих настройках ссылку на питона, откуда было установлено это **"venv"**. 

---

Во время установки пакетов питона могут вылезать предупреждения (обычно желтым цветом), что не является **"Ошибкой"**, это всего лишь **"Уведомление"**.

---

После запуска системы в меню Менеджера (шестеренка) - пункт **"AGLTranslation-langualge"** выбрать язык **"Русский"**.

<p align="center">
  <img src="img/1.jpg">
</br>
  <img src="img/2.jpg">
</p>

---
<p align="center">
Переключение языка "Русский/Английский" кнопкой менеджера "Switch Locale/Смена языка".</br>
Время переключения интерфейса "Русский/Английский" - моментальное.
</br></br>

  <img src="img/4.jpg">
</p>

---

Проект содержит только русский (и английский) языки, все остальные языки отключены, поскольку он рассчитан только на территорию России. Проект локализации **"AIGODLIKE"** "ru-RU" по соглашению с Китаем берется отсюда, т.е., фактически, официальным проектом русской локализации **"ComfyUI"** является этот git-ресурс. Здесь всегда последние обновления русской локализации для "ComfyUI", публикуются онлайн.

---

Обновление ноды в **"ComfyUI"** (пока) вручную. В терминале открыть папку:

- **"custom_nodes\NStor-ComfyUI-Translation\"**

и находясь именно в этой папке выполнить команду:

- **git pull**

В настоящий момент переведены все встроенные меню, панели, диалоги, названия и т.п., до чего смогли технологически добраться не влезая и не изменяя код самого **"ComfyUI"**, т.к. это считаем необходимым условием доверия к подобного рода софту. Мы никогда не изменяем ни одного знака (даже пробела) в исходном коде, который написан не нами. Любые обвинения типа "До установки вашего приложения все работало, а теперь перестало" являются необоснованными. Ни установка, ни удаление пакета локализации, никак не влияет на работоспособность основной системы.

---

В системе не переводились наименования нод, пунктов входов/выходов, заголовки, пункты настроек и т.п., которые являются общепринятыми привычными для пользователей, знакомых с "ComfyUI". Исключением являются лишь некоторые "обще-понятные" названия.  

---

В дальнейшем планируется локализовать основные популярные ноды и модули. Если вас что-то не устраивает в переводе, или вы начинаете путаться в локализованной версии, просто нажмите кнопку **"Смена языка"** *("Switch locale")*, и произойдет автоматическое переключение на встроенный английский язык. 

---

Уже переведенные ноды (файлы локализации) находятся в папке "ru-RU\Nodes" в файлах с именем, одинаковым с названием ноды, и с расширением **JSON**.

---

Перевод встроенных нод в файле - **internal.json**

---

Для изменения перевода откройте нужный файл и измените русское название на свое, если вам так больше нравится.

---

Для выключения перевода конкретных нод(ы), просто переименуйте нужный файл так, чтобы его имя не совпадало с названием ни одной ноды, установленной в системе, или просто удалите этот файл. После чего перезагрузите питон, и выбранная нода больше переводиться не будет. Для восстановления перевода, просто закиньте одноименный с нодой файл перевода с расширением **JSON**, и перезагрузите питона.

---

Все замечания, предложения в [Telegram](https://t.me/comfyui_rus)

---

<p 

align="center">
Далее - немного скриншотов переведенного интерфейса:</br></br>
  <img width="200" src="img/01.jpg">
</br>
  <img src="img/02.jpg">
</br>
  <img src="img/03.jpg">
</br>
  <img src="img/04.jpg">
</br>
  <img width="400" src="img/05.jpg">
</br>
  <img width="400" src="img/06.jpg">
</p>

---

Удачи! )))

P.S.

Претензии типа:

***- "А вот неправильно там вот переведено!!!"***

***- "А у вас так, а надо было так!"***

   не принимаются!)))
   
Файлы у вас есть, зайдите и напишите сами так, как вам надо )))

Если вы сами что-то переведете, то присылайте нам, мы включим ваш перевод в выпуск, не вопрос )))

