# -*- coding: utf-8 -*-
"""
Created on Tue Feb 11 10:56:30 2020

@author: Szymon_Komorowski
"""

#Utwórz skrypt do zamiany kilometrów na mile i na odwrót

print("Witaj w konwerterze mile <-> kilometry!")
while True:
    print("Jesli chcesz zamienic mile na kilometry - wcisnij 1")
    print("Jesli chcesz zamienic kilometry na mile - wcisnij 2")
    print("Wyjscie - wcisnij 3")
    wybor = input()
    if (wybor == "1"):
        while True:
            try:
                mile = float(input("Podaj wartosc w milach: "))
            except ValueError:
                print("Bledna wartosc! Sprobuj ponownie!")
                continue
            kilometry = mile*0.62
            print(str(mile) + " mil, to " + str(kilometry) + " kilometrow!")
            print("")
            break
    elif (wybor == "2"):
        while True:
            try:
                kilometry = float(input("Podaj wartosc w kilometry: "))
            except ValueError:
                print("Bledna wartosc! Sprobuj ponownie!")
                continue
            mile = kilometry/0.62
            print(str(kilometry) + " kilometrow, to " + str(mile) + " mile!")
            print("")
            break
    elif (wybor == "3"):
        print("Narazie!")
        break
    else:
        print("Zla wartosc! Sproboj ponownie!")
        continue
    continue


#W klasie przeprowadzono sprawdzian, za który uczniowie mogli otrzymać maksymalnie 40 punktów.
#Skala ocen w szkole jest następująca: 0-39% - ndst, 40-49% - dop, 50-69% - dst, 70-84% - db, 85-99% - bdb, 100% - cel.
#Utwórz skrypt z interfejsem tekstowym, który na podstawie podanej liczby punktów ze sprawdzianu wyświetli ocenę jaka się należy
#(skorzystaj z konstrukcji if, elif, else)

while True:
    print("Podaj liczbe swoich punktow, a poznasz ocene!")
    try:
        punkty = float(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        print("")
        continue
    punkty_procent = (punkty/40)*100
    if (0 <= punkty_procent < 40):
        print("Masz ocenę niedostateczną!")
        break
    elif (40 <= punkty_procent < 50):
        print("Masz ocenę dopuszczającą!")
        break
    elif (50 <= punkty_procent < 70):
        print("Masz ocenę dostateczną!")
        break
    elif (70 <= punkty_procent < 85):
        print("Masz ocenę dobrą!")
        break
    elif (85 <= punkty_procent < 100):
        print("Masz ocenę bardzo dobrą!")
        break
    elif (punkty_procent == 100):
        print("Masz ocenę celującą!")
        break
    else:
        print("Bledna wartosc! Sprobuj ponownie!")
        print("")
        continue


#Utworzyć skrypt z interfejsem tekstowym obliczający n-ty element ciągu Fibonacciego – wykonać zadanie iteracyjnie i rekurencyjnie

#Iteracyjnie
def ciag_fib(n):
    if n == 0:
        wynik = 0
        return wynik
    elif (n == 1 or n == 2):
        wynik = 1
        return wynik
    else:
        a, b = 0, 1
        for i in range(1, n):
            a, b = b, a + b
        return b

print("Podaj, który wyraz ciągu Fibbonaciego chcesz otrzymać:")
x = int(input())
print(ciag_fib(x))

#Rekurencyjnie
def fib_rek(n):
    if n < 1:
        return 0
    if n < 2:
        return 1
    return fib_rek(n - 1) + fib_rek(n - 2)

print("Podaj, który wyraz ciągu Fibbonaciego chcesz otrzymać:")
x = int(input())
print(fib_rek(x))


#Utwórz skrypt, w którym zamieścisz 3 listy danych, zawierające po 14 temperatur dla 3 wybranych miast na kolejne 14 dni
#Utwórz wykres z tych danych.
#Twój wykres powinien mieć 3 linie z zaznaczonymi punktami danych za pomocą różnych znaczników, tytuł, opisane osie oraz legendę

import pylab

dni = ["12.02", "13.02", "14.02", "15.02", "16.02", "17.02", "18.02", "19.02", "20.02", "21.02", "22.02", "23.02", "24.02", "25.02"]
temp_poznan = [5, 6, 5, 8, 13, 11, 8, 6, 6, 7, 8, 9, 9, 8]
temp_wroclaw = [6, 7, 7, 9, 13, 12, 8, 7, 7, 9, 9, 10, 10, 9]
temp_szczecin = [5, 6, 7, 9, 14, 10, 7, 7, 7, 8, 9, 10, 9, 9]
legenda = ["Poznań", "Wrocław", "Szczecin"]

pylab.plot(dni, temp_poznan, marker='o', linestyle='dashed')
pylab.plot(dni, temp_wroclaw, marker='+', linestyle='dashed')
pylab.plot(dni, temp_szczecin, marker='*', linestyle='dashed')
pylab.title("Wykres temperatur w trzech miastach Poski")
pylab.grid(True)
pylab.xlabel("Dni")
pylab.ylabel("Temperatura")
pylab.legend(legenda)
pylab.show()

#Utwórz funkcję, która będzie generować listy danych do wykreślenia w oparciu o:
#a) fukcję liniową ax+b
#b) funkcję kwadratową ax^2+bx+c
#c) funkcję odwrotnie-potęgową a/x^n

import pylab as pl

def funk_lin(a, b):
    x_list = []
    y_list = []
    x = -5
    for i in range(11):
        y = a*x+b
        x_list.append(x)
        y_list.append(y)
        x = x+1
    pl.plot(x_list, y_list, marker='o', linestyle='dashed')
    pl.title("Wykres funkcji liniowej")
    pl.grid(True)
    pl.xlabel("Os x")
    pl.ylabel("Os y")
    pl.show()
    return x_list, y_list

def funk_kw(a, b, c):
    x_list = []
    y_list = []
    x = -5
    for i in range(11):
        y = a*x**2+b*x+c
        x_list.append(x)
        y_list.append(y)
        x = x+1
    pl.plot(x_list, y_list, marker='o', linestyle='dashed')
    pl.title("Wykres funkcji kwadratowej")
    pl.grid(True)
    pl.xlabel("Os x")
    pl.ylabel("Os y")
    pl.show()
    return x_list, y_list

def funk_odw_pt(a, n):
    x_list_minus = []
    y_list_minus = []
    x = -10
    for i in range(5):
        y = a/(x**n)
        x_list_minus.append(x)
        y_list_minus.append(y)
        x = x/2
    x_list_plus = []
    y_list_plus = []
    x = 10
    for i in range(5):
        y = a/(x**n)
        x_list_plus.append(x)
        y_list_plus.append(y)
        x = x/2
    x_list = x_list_minus + x_list_plus
    y_list = y_list_minus + y_list_plus
    pl.plot(x_list_minus, y_list_minus, marker='o', linestyle='dashed')
    pl.plot(x_list_plus, y_list_plus, marker='o', linestyle='dashed')
    pl.title("Wykres funkcji kwadratowej")
    pl.grid(True)
    pl.xlabel("Os x")
    pl.ylabel("Os y")
    pl.show()
    return x_list, y_list

while True:
    print("Witaj! Wybierz funkcje:")
    print("1 -- Funkcja liniowa")
    print("2 -- Funkcja kwadratowa")
    print("3 -- Funkcja odwrotnie-potegowa")
    print("")
    print("4 -- Wyjscie")
    wybor = input()
    if (wybor == "1"):
        print("Wybrales funkcje liniowa!")
        try:
            a = float(input("Podaj wspolczynnik a: "))
            b = float(input("Podaj wspolczynnik b: "))
        except ValueError:
            print("Bledna wartosc! Sprobuj jeszcze raz!")
            continue
        funk_lin(a, b)
        continue
    elif (wybor == "2"):
        print("Wybrales funkcje kwadratowa!")
        try:
            a = float(input("Podaj wspolczynnik a: "))
            b = float(input("Podaj wspolczynnik b: "))
            c = float(input("Podaj wspolczynnik c: "))
        except ValueError:
            print("Bledna wartosc! Sprobuj jeszcze raz!")
            continue
        funk_kw(a, b, c)
        continue
    elif (wybor == "3"):
        print("Wybrales funkcje odwrtonie-potegowa!")
        try:
            a = float(input("Podaj wspolczynnik a: "))
            n = float(input("Podaj wspolczynnik n: "))
        except ValueError:
            print("Bledna wartosc! Sprobuj jeszcze raz!")
            continue
        funk_odw_pt(a, n)
    elif (wybor == "4"):
        print("Narazie!")
        break
    else:
        print("Bledna wartosc! Sprobuj jeszcze raz!")
        continue


#Korzystając ze słownika, utwórz funkcję, która będzie zwracać tłumaczenia nazw miesięcy z języka polskiego na angielski

def zwrot_slownika():
    slownik = {"styczen": "January", "luty": "February", "marzec": "March", "kwiecien": "April", "maj": "May",
               "czerwiec": "June", "lipiec": "July", "sierpien": "August", "wrzesien": "September", "pazdziernik": "Oktober",
               "listopad": "November", "grudzien": "December"}
    print("Podaj nazwe miesiaca po polsku (male litery, bez polskich znakow):")
    try:
        miesiac_pol = str(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!") 
    warunek = str(miesiac_pol) in slownik
    if warunek == True:
        print(str(miesiac_pol) + ", to po angielsku " + slownik[str(miesiac_pol)])
    else:
        print("Bledna wartosc! Sprobuj ponownie!")
    
while True:
    print("Witaj!")
    print("Slownik miesiecy pol-ang --- 1")
    print("Wyjscie --- 0")
    wybor = str(input("Podaj co chcesz zrobic:"))
    if wybor == "1":
        zwrot_slownika()
        continue
    elif wybor == "0":
        print("Narazie!")
        break
    else:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue

#Utwórz fukcję, która jako argument będzie przyjmować listę liczb zmiennoprzecinkowych, a jej wynikiem będzie mediana
#Skorzystaj z metody sort działającej na standardowych listach
        
def srednia(lista):
    sr = sum(lista)/len(lista)
    print("Srednia arytmetyczna podanych wartosci to: " + str(sr))

while True:
    print("Witaj! Podaj z ilu liczb chcesz wyliczyc srednia:")
    lista = []
    try:
        n = int(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe: "))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
        lista.append(liczba)
    srednia(lista)
    break

#Utwórz fukcję, która jako argument będzie przyjmować listę liczb zmiennoprzecinkowych, a jej wynikiem będzie odchylenie standardowe średniej

def odchylenie(lista):
    sr = sum(lista)/len(lista)
    liczba = 0
    liczebnik = []
    mianownik = len(lista)
    for i in range (int(len(lista))+1):
        roznica = lista[0]-sr
        liczebnik.append(roznica)
        liczba += liczba
    odchyl_strd = (sum(liczebnik)/mianownik)**(0.5)
    print("Odchylenie standardowe sredniej arytmetycznej podanych wartosci to: " + str(odchyl_strd))

while True:
    print("Witaj! Podaj z ilu liczb chcesz wyliczyc odchylenie standardowe:")
    lista = []
    try:
        n = int(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe:"))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
        lista.append(liczba)
    odchylenie(lista)
    break

#Utwórz fukcję, która jako argument będzie przyjmować listę liczb zmiennoprzecinkowych, a jej wynikiem będzie drugi moment centralny (wariancja)

def wariancja(lista):
    sr = sum(lista)/len(lista)
    liczba = 0
    liczebnik = []
    mianownik = len(lista)
    for i in range (int(len(lista))+1):
        roznica = lista[0]-sr
        liczebnik.append(roznica)
        liczba += liczba
    war = (sum(liczebnik)/mianownik)**(0.5)
    print("Wariancja podanych wartosci to: " + str(war))

while True:
    print("Witaj! Podaj z ilu liczb chcesz wyliczyc wariancje:")
    lista = []
    try:
        n = int(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe:"))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
        lista.append(liczba)
    wariancja(lista)
    break

#Utwórz funkcję, która jako argument będzie przyjmować listę liczb zmiennoprzecinkowych, a jej wynikiem będzie trzeci moment centralny (skośność)

def skosnosc(lista):
    sr = sum(lista)/len(lista)
    liczba = 0
    liczebnik = []
    mianownik = len(lista)
    for i in range (int(len(lista))+1):
        roznica = (lista[liczba]-sr)**3
        liczebnik.append(roznica)
        liczba += liczba
    skos = sum(liczebnik)/mianownik
    print("Skosnosc podanych wartosci to: " + str(skos))

while True:
    print("Witaj! Podaj z ilu liczb chcesz wyliczyc skosnosc:")
    lista = []
    try:
        n = int(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe:"))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
            break
        lista.append(liczba)
    skosnosc(lista)
    break

#Utwórz funkcję, która jako argument będzie przyjmować dwie listy o równej liczbie elementów, a jej wynikiem będą współczynniki regresji liniowej

def regresja_liniowa(lista_1, lista_2):
    sr_1 = sum(lista_1)/len(lista_1)
    sr_2 = sum(lista_2)/len(lista_2)
    liczba = 0
    liczebnik = []
    mianownik = []
    for i in range (int(len(lista_1))+1):
        iloczyn = (lista_1[liczba]-sr_1)*(lista_2[liczba]-sr_2)
        liczebnik.append(iloczyn)
        roznica = (lista_1[liczba]-sr_1)**2
        mianownik.append(roznica)
        liczba += liczba
    a = sum(liczebnik)/sum(mianownik)
    b = sr_2-(a*sr_1)
    print("Funkcja regresji liniowej podanych wartosci to: y="+str(a)+"x+"+str(b))

while True:
    print("Witaj! Podaj z ilu liczb chcesz wyliczyc regresje liniowa:")
    lista_1 = []
    lista_2 = []
    try:
        n = int(input())
    except ValueError:
        print("Bledna wartosc! Sprobuj ponownie!")
        continue
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe do pierwszej listy:"))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
        lista_1.append(liczba)
    for i in range(0,n):
        try:
            liczba = float(input("Podaj liczbe do drugiej listy:"))
        except ValueError:
            print("Bledna wartosc! Przyjeto wartosc zero!")
            liczba = 0
        lista_2.append(liczba)
    regresja_liniowa(lista_1, lista_2)
    break

#Utwórz funkcję zależną od numeru wiersza i kolumny macierzy (i, j), która będzie obliczać liczbę "żywych" komórek sąsiadujących względem komórki (i, j)

import numpy as np

def spr_kom_zywa(i,j):
    komorka_zywa = 1
    populacja = 0
#wiersz 1
    try:
        if macierz[i - 1][j - 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    try:
        if macierz[i][j - 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    try:
        if macierz[i + 1][j - 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
# wiersz 2
    try:
        if macierz[i - 1][j] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    try:
        if macierz[i + 1][j] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
# wiersz 3
    try:
        if macierz[i - 1][j + 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    try:
        if macierz[i][j + 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    try:
        if macierz[i + 1][j + 1] == komorka_zywa:
            populacja += 1
    except IndexError:
        pass
    print("Wokol komorki ["+str(i)+", "+str(j)+"] znajduje sie "+str(populacja)+" zywych komorek!")

macierz = np.array([[1, 1, 0, 1, 0, 1, 1, 0, 1, 0],
                    [1, 1, 1, 0, 1, 1, 1, 1, 0, 1],
                    [1, 1, 0, 1, 0, 1, 1, 0, 1, 0],
                    [0, 1, 1, 0, 1, 0, 1, 1, 0, 1],
                    [1, 1, 0, 1, 1, 1, 1, 0, 1, 1],
                    [1, 1, 0, 1, 0, 1, 1, 0, 1, 0],
                    [1, 1, 1, 0, 1, 1, 1, 1, 0, 1],
                    [0, 1, 1, 0, 1, 0, 1, 1, 0, 1],
                    [1, 1, 0, 1, 1, 1, 1, 0, 1, 1],
                    [1, 1, 0, 1, 0, 1, 1, 0, 1, 0]])
while True:
    print("Witaj! Ponizej wyswietlona zostala macierz!")    
    print(macierz)
    print("Wskaz wiersz i kolumne tej macierzy a dowiesz sie ile komorek zywych znajduje sie wokol tej wskazanej przez Ciebie!")
    try:
        i = int(input("Wiersz:"))-1
    except ValueError:
        print("Bledna wartosc! Spróbuj ponownie!")
        continue
    try:
        j = int(input("Kolumna:"))-1
    except ValueError:
        print("Bledna wartosc! Spróbuj ponownie!")
        continue
    spr_kom_zywa(i,j)
    break

#Utwórz klasę Prostokąt, a następnie na jej podstawie (korzystając z mechanizmu dziedziczenia) utwórz klasę Kwadrat

class Prostokat():
    def __init__(self, a, b):
        self.a = a
        self.b = b
    
    def nazwa(self):
        return "Prostokąt"

    def przedstaw_sie(self):
        print("Jestem "+str(self.nazwa)+". Moj obwod: "+str(self.obwod)+", a pole: "+str(self.pole)+".")

    def obwod(self):
        return 2*(self.a+self.b)

    def pole(self):
        return self.a*self.b
    
class Kwadrat(Prostokat):
    def __init__(self, a):
        self.a = a
    
    def nazwa(self):
        return "Kwadrat"

    def obwod(self):
        return 4*self.a

    def pole(self):
        return self.a**2   