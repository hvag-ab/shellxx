#!/bin/bash

yum install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
yum install mesa-libOSMesa-devel gnu-free-sans-fonts wqy-zenhei-fonts
wget http://npm.taobao.org/mirrors/chromedriver/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/bin/
chmod +x /usr/bin/chromedriver

#from selenium.webdriver.chrome.options import Options
#from selenium import webdriver
#from time import sleep
#chrome_options = Options()
#chrome_options.add_argument('--no-sandbox')
#chrome_options.add_argument('--disable-dev-shm-usage')
#chrome_options.add_argument('--headless')
#chrome_options.add_argument('blink-settings=imagesEnabled=false')
#chrome_options.add_argument('--disable-gpu')
#browser = webdriver.Chrome(chrome_options=chrome_options)
#browser.get('https://www.taobao.com/')
#sleep(2)
#page_text = browser.page_source
#print(page_text[0:100])
