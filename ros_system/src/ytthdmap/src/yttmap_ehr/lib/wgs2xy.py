from pyproj import  Proj,transform
import warnings

warnings.filterwarnings('ignore')
class xy_transform:
    def __init__(self):
        self.WGS84 = Proj(init='EPSG:4326')
        self.p=Proj(init = "EPSG:32651")
    def process(self,lon,lat):
        a,b = transform(Proj(init='EPSG:4326'),Proj(init = "EPSG:32651"),lon,lat)
        print("CALL")
        print("a,b is",a,b)
        return (a,b)
    def printhello(self,a,c):
        print(a);
        print("c is ",c)
        print("CALL")
        b = a+2
        return b

class Test:
    def __init__(self):
        print("Init")
    def SayHello(self, name):
        print ("Hello,", name)
        return name

