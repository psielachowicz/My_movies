Aplikacja My_movies:
Link do Heroku:

http://glacial-basin-9021.herokuapp.com/

Travis:

[![Build Status](https://travis-ci.org/psielachowicz/My_movies.svg?branch=master)](https://travis-ci.org/psielachowicz/My_movies)

- dodane testy kontrolerów (40) oraz widoków (10)
testów jest więcej niż 50 działających lokalnie lecz część jest zakomentowana ze względu
na problemy z travisem.
- poprawki w wyświetlanym filmie: 
przykładowo: jeśli budżet wynosi 000 lub nie został uzupełniony to nie jest wyświetlany
- usprawnione wyszukiwanie wraz z dodanym przyciskiem do wyszukiwania.
- dodane dane o aktorach wraz z odnośnikami do strony internetowej jeśli taką posiada

Dlaczego aplikacja znajduje się na heroku a nie na shelly cloud?

"Shelly Cloud virtual servers run on Linux distribution and require
 all gems installed to be Linux compatible.
 (...) Due to the above, shelly gem was not implemented with Windows in mind."
 
 
 
 
