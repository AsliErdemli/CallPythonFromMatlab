
% Make sure you have a Matlab compatible Python version. Right now Python
% 3.9 is the lastest. Download it for all users. 
pyversion % Check if Matlab finds Python. If this gives empty lines (e.g.'') , then do: pyversion insertmyPython.exePath

system('python test.py') % This is for Matlab prior to 2021

pyrunfile("test.py") % This is for Matlab 2021 and later, assuming test.py needs no arguments. Maybe try something like for test.py: print('Hello, if you see this text, Python works through Matlab'). 

pyrunfile("test.py", x=2, y= 2) % % This is for Matlab 2021 and later, assuming test.py needs x and y as arguments. 
% Ex:  def add(a,c):
%     b = a+c
%     return b
% z = add(x,y)

pyrunfile("test.py", "z", x=2, y= 2) % This is for Matlab 2021 and later, assuming test.py needs x and y as arguments and we want to see z as output.



% In Matlab 2018 this should work with some added modification to test.py
x=2
y=3
systemCommand= ['python test.py ', num2str(x),' ',num2str(y)]
system(systemCommand)

% For This to work add this to test.py : 
% Au début de test.py '''import sys
% 
% 
% 
% à la fin de test.py  if __name__ == '__main__':
%     x = float(sys.argv[1])
%     y = float(sys.argv[2])
%     sys.stdout.write(str(add(x,y)))