import numpy as np
import copy
from abc import *
import string
class AbstrakcyjnaMaszynaTuringa(ABC):
    def __init__(self,alfabet,stany,przejscia):
         self.alfabet=alfabet
         self.stany=stany
         self.przejscia=przejscia
    @abstractproperty
    def ListStanow(self):
        return self.stany

    @abstractproperty
    def Przejscia(self):
        return self.przejscia


    @abstractmethod
    def WykonajKrok(self,kierunek,znakChwilowy):
        if kierunek == "R":
            self.znakChwilowy+=1
        elif kierunek == "L":
            self.znakChwilowy-=1

    @abstractmethod
    def Uruchom(self, Tasma): 
        pass

    @abstractmethod
    def CzyStanJestPoczatkowy(self, Stan):
        if Stan==self.stany[0]:
            return True
        return False

    @abstractmethod
    def CzyStanJestKoncowy(self, Stan):
        if Stan==self.stany[len(self.stany)-2]:
            return True
        elif Stan==self.stany[len(self.stany)-1]:
            return True
        return False


class MaszynaTuringa(AbstrakcyjnaMaszynaTuringa):

    def __init__(self,alfabet,stany,przejscia):
         self.alfabet=alfabet
         self.stany=stany
         self.przejscia=przejscia

    def ListStanow(self):
        return self.stany

    def Przejscia(self):
        return self.przejscia
        
    def WykonajKrok(self,kierunek):
        pass
    
    def CzyStanJestPoczatkowy(self, Stan):
        pass


    def CzyStanJestKoncowy(self, Stan):
        pass
        

    def Uruchom(self,tasma): 
        self.stanChwilowy=self.stany[0]
        self.znakChwilowy=0
        while not super().CzyStanJestKoncowy(self.stanChwilowy):
            for x in range(0,len(self.przejscia)):
                if self.przejscia[x][0] == self.stanChwilowy:
                    if tasma[self.znakChwilowy] in self.przejscia[x][1]:
                        super().WykonajKrok(self.przejscia[x][2],self.znakChwilowy)
                        self.stanChwilowy=self.przejscia[x][3]
                        
        if self.stanChwilowy==self.stany[len(self.stany)-1]:
            return False
        if self.stanChwilowy==self.stany[len(self.stany)-2]:
            return True

if __name__=="__main__":

    a = list(string.ascii_lowercase)+["0","1","2","3","4","5","6","7","8","9"]+list(string.ascii_uppercase)+["_","$","@","-"]
    b = ["!","%","^","&","*","(",")","~","{","}","[","]","?",",",";",":",">",".","+","=","|"]
    alfabet = a + b + ["#"]
    stan=["poczatek","poczatek1","poczatekC","z1","z2","z3","z4","z5","z6","z7","z8","z9","z10","z11","z12","z13","z14","z15","l1","l2","s1","c1","koniecC","poczatekS","koniecS","poczatekL","poczatekV","koniecV","koniecL","poczatekZ","koniecP","koniecF"]
    przejscia= [
                ["poczatek",'#','R',"poczatekV"],
                ["poczatekV",a,'R',"poczatekV"],
                ["poczatekV",b,'R',"koniecF"],
                ["poczatekV",'#','L',"koniecV"],

                ["koniecV",a,'L',"koniecV"],
                ["koniecV",'#','R',"poczatekC"],
        
                ["poczatekC",'[0123456789]','R',"c1"],["poczatekC",'#','R',"koniecF"],["c1",'[0123456789]','L',"koniecC"],["c1",'#','R',"koniecF"],["poczatekC",list(string.ascii_lowercase)+list(string.ascii_uppercase)+["_","$","@"],'R',"poczatekC"],["c1",list(string.ascii_lowercase)+list(string.ascii_uppercase)+["_","$","@"],'R',"c1"],
                ["koniecC",a,'L',"koniecC"],["koniecC",'#','R',"poczatekS"],["poczatekS",'[_$@]','R',"s1"],["poczatekS",'#','R',"koniecF"],["s1",'[_$@]','L',"koniecS"],["s1",'#','R',"koniecF"],["poczatekS",string.ascii_lowercase+string.ascii_uppercase+'[0123456789]','R',"poczatekS"],["s1",string.ascii_lowercase+string.ascii_uppercase+'[0123456789]','R',"s1"],
                ["koniecS",a,'L',"koniecS"],["koniecS",'#','R',"poczatekL"],["poczatekL",list(string.ascii_lowercase)+list(string.ascii_uppercase),'R',"l1"],["l1",list(string.ascii_lowercase)+list(string.ascii_uppercase),'R',"l2"],["l2",list(string.ascii_lowercase)+list(string.ascii_uppercase),'L',"koniecL"],["poczatekL",'#',"R","koniecF"],["l1",'#',"R","koniecF"],["l2",'#',"R","koniecF"],["poczatekL",["0","1","2","3","4","5","6","7","8","9"]+["_","$","@"],"R","poczatekL"],["l1",["0","1","2","3","4","5","6","7","8","9"]+["_","$","@"],"R","l1"],["l2",["0","1","2","3","4","5","6","7","8","9"]+["_","$","@"],"R","l2"],
        
                ["koniecL",a,'L',"koniecL"],
                ["koniecL",'#','R',"poczatekZ"],

                ["poczatekZ",a,'R',"z1"],
                ["z1",a,'R',"z2"],
                ["z2",a,'R',"z3"],
                ["z3",a,'R',"z4"],
                ["z4",a,'R',"z5"],
                ["z5",a,'R',"z6"],
                ["z6",a,'R',"z7"],
                ["z7",a,'R',"z8"],
                ["z8",a,'R',"z9"],
                ["z9",a,'R',"z10"],
                ["z10",a,'R',"z11"],
                ["z11",a,'R',"z12"],
                ["z12",a,'R',"z13"],
                ["z13",a,'R',"z14"],
                ["z14",a,'R',"z15"],

                ["z15",a,'R',"koniecF"],
                ["z7","#",'R',"koniecF"],

                ["z8","#",'R',"koniecP"],
                ["z9","#",'R',"koniecP"],
                ["z10","#",'R',"koniecP"],
                ["z11","#",'R',"koniecP"],
                ["z12","#",'R',"koniecP"],
                ["z13","#",'R',"koniecP"],
                ["z14","#",'R',"koniecP"],
                ["z15","#",'R',"koniecP"]]


    cos = MaszynaTuringa(alfabet,stan,przejscia)
    print(cos.Uruchom(list("#5i4_$vyhugKh#")))