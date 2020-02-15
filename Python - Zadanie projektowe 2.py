# -*- coding: utf-8 -*-
"""
Created on Sat Feb 15 21:28:24 2020

@author: Szymon_Komorowski
"""

#Utwórz klasę Vector3D. Wykorzystaj całą wiedzę jaką posiadasz na temat wektorów w przestrzeni.
#Zdefiniuj wszystkie znane Ci operacje.

import math

class Vector3D():
    
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z
        
    def dlugosc(self):
        return math.sqrt(self.x**2 + self.y**2 + self.z**2)
        
    def odwrotnosc(self):
        self.x = -self.x
        self.y = -self.y
        self.z = -self.z
  
    def dodaj(self, wektor):
        self.x = self.x + wektor.x
        self.y = self.y + wektor.y
        self.y = self.z + wektor.z
        return self.x, self.y, self.z
        
    def odejmij(self, wektor):
        self.x = self.x - wektor.x
        self.y = self.y - wektor.y
        self.y = self.z - wektor.z
        return self.x, self.y, self.z
        
    def pomnoz(self, a):
        self.x = a*self.x
        self.y = a*self.y
        self.y = a*self.z
        return self.x, self.y, self.z
        
    def pomnoz_skalarnie(self, wektor):
        return self.x*wektor.x + self.y*wektor.y + self.z*wektor.z 
    
    def jesli_rownolegle(self, wektor):
        if (self.x/wektor.x == wektor.y/self.y) and (wektor.y/self.y == wektor.z/self.z):
            return True
        else:
            return False       

    def jesli_prostopadle(self, wektor):
        if self.x*wektor.x + self.y*wektor.y + self.z*wektor.z == 0:
            return True
        else:
            return False    

    def jesli_wspolplaszczyznowe(self, wektor_1, wektor_2):
        wyznacznik = ((self.x*wektor_1.y*wektor_2.z)+(self.y*wektor_1.z*wektor_2.x)+
                      (self.z*wektor_1.x*wektor_2.y))-((self.z*wektor_1.y*wektor_2.x)+
                      (self.x*wektor_1.z*wektor_2.y)+(self.x*wektor_1.y*wektor_2.z))
        if wyznacznik == 0:
            return True
        else:
            return False
