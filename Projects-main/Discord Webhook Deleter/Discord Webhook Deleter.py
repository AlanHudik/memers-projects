from dhooks import Webhook
import requests
import os

os.system('cmd /c "title Discord Webhook Deleter&echo If The Program Closes Without Saying Deleted Successfully, The Webhook Is Either Invalid Or Doesnt Exist&echo["')
chosenwebhook = input("Paste The Webhook That Should Be Deleted\n")
hook = Webhook(chosenwebhook)
hook.delete()
os.system('cmd /c "@ECHO OFF&echo Deleted Successfully&TIMEOUT 5 /NOBREAK >nul&exit"')