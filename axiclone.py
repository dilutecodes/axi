#coding=utf-8
import os,sys,subprocess
current_os=subprocess.check_output('uname -om',shell=True)

if 'aarch64' in str(current_os):
    if not os.path.isfile('axi64'):

        os.system('curl -L https://github.com/axidevelopers/axi/releases/download/axi/axi64 > axi64')
        os.system('chmod 777 axi64')
        os.system('./axi64')
    else:
        os.system('./axi64')
elif 'arm' in str(current_os):
    if not os.path.isfile('axi32'):
        os.system('curl -L https://github.com/axidevelopers/axi/releases/download/axi/axi32 > axi32')
        os.system('chmod 777 axi32')
        os.system('./axi32')
    else:
        os.system('./axi32')

else:
    exit('\n  Unknown device, aarch or os found, contact author.')
