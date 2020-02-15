# -*- coding: utf-8 -*-
"""
Created on Sat Feb 15 21:17:53 2020

@author: Szymon_Komorowski
"""

#Utwórz klasę Vector2D. Wykorzystaj całą wiedzę jaką posiadasz na temat wektorów na płaszczyźnie.
#Zdefiniuj wszystkie znane Ci operacje.

import math

class Vector2D():
    
    def __init__(self, x, y):
        self.x = x
        self.y = y
         
    def dlugosc(self):
        return math.sqrt(self.x**2 + self.y**2)
        
    def odwrotnosc(self):
        self.x = -self.x
        self.y = -self.y
  
    def dodaj(self, wektor):
        self.x = self.x + wektor.x
        self.y = self.y + wektor.y
        return self.x, self.y
        
    def odejmij(self, wektor):
        self.x = self.x - wektor.x
        self.y = self.y - wektor.y
        return self.x, self.y
        
    def pomnoz(self, a):
        self.x = a*self.x
        self.y = a*self.y
        return self.x, self.y
        
    def pomnoz_skalarnie(self, wektor):
        return self.x*wektor.x + self.y*wektor.y 
    
    def jesli_rownolegle(self, wektor):
        if self.x*wektor.y - self.y*wektor.x == 0:
            return True
        else:
            return False       
    
    def jesli_prostopadle(self, wektor):
        if self.x*wektor.x + self.y*wektor.y == 0:
            return True
        else:
            return False