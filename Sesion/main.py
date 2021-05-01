
import selenium
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
import time
from bs4 import BeautifulSoup as bs4

from selenium.webdriver.chrome.options import Options
def conexion(email, pas):
    browser= webdriver.Chrome(executable_path=ChromeDriverManager().install())
    browser.get('https://mbasic.facebook.com')

    username = browser.find_elements_by_css_selector("input[name=email]")
    username[0].send_keys(email)

    password = browser.find_elements_by_css_selector("input[name=pass]")
    password[0].send_keys(pas)

    loginButton = browser.find_elements_by_css_selector("input[type=submit]")
    loginButton[0].click()
    #url_device=browser.current_url
    #browser.get(url_device)

#sbuttonDevice = browser.find_elements_by_css_selector("input[type=submit]")
    urls=['https://mbasic.facebook.com/photo?fbid=4561570650533328']
    for i in urls:
        browser.get(i)
        d = browser.page_source
        soup = bs4(d, 'html.parser')

        link2 = soup.find('div', {'class': '_55wr async_elem'})
        try:
            more_comments = link2.find('a').get('href')
        except:
            print("error no hay")
            break
        url = 'https://mbasic.facebook.com' + more_comments
        print(url)
    time.sleep(50)
    browser.quit()

def oculto():
    optionsChrome = Options()
    optionsChrome.headless = True
    browser = webdriver.Chrome(executable_path=ChromeDriverManager().install(), options=optionsChrome)
    browser.get('https://www.facebook.com')
    print("Titulo ", browser.title)
    browser.close()

def oculto2(email, pas):
    chrome_options = Options()
    # chrome_options.add_argument("--disable-extensions")
    # chrome_options.add_argument("--disable-gpu")
    # chrome_options.add_argument("--no-sandbox") # linux only
    chrome_options.add_argument("--headless")
    # chrome_options.headless = True # also works
    browser = webdriver.Chrome(executable_path=ChromeDriverManager().install(),options=chrome_options)
    browser.get('https://mbasic.facebook.com')

    username = browser.find_elements_by_css_selector("input[name=email]")
    username[0].send_keys(email)

    password = browser.find_elements_by_css_selector("input[name=pass]")
    password[0].send_keys(pas)

    loginButton = browser.find_elements_by_css_selector("input[type=submit]")
    loginButton[0].click()
    # url_device=browser.current_url
    # browser.get(url_device)

    # sbuttonDevice = browser.find_elements_by_css_selector("input[type=submit]")
    urls = ['https://mbasic.facebook.com/photo?fbid=4561570650533328']
    for i in urls:
        browser.get(i)
        d = browser.page_source
        soup = bs4(d, 'html.parser')

        link2 = soup.find('div', {'class': '_55wr async_elem'})
        try:
            more_comments = link2.find('a').get('href')
        except:
            print("error no hay")
            break
        url = 'https://mbasic.facebook.com' + more_comments
        print(url)


    browser.quit()
def print_hi(name):
    # Use a breakpoint in the code line below to debug your script.
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    #print_hi('PyCharm')
    #conexion('jav2022123@gmail.com','marytigrearias99')
    oculto2('jav2022123@gmail.com','marytigrearias99')