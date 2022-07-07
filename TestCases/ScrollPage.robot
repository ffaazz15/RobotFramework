***Settings ***
Library    SeleniumLibrary



#this is done so that some times scroll  cant be done with nay other keyword rather we ahve to use javascript executer


***Variables ***
${browser}    chrome
${url}    https://www.worldometers.info/geography/how-many-countries-are-there-in-the-world/

***Test Cases ***
Scrolling Test
    open browser     ${url}    ${browser}
    maximize browser window
    #Execute Javascript     window.scrollTo(0,2340) <---scrolls element
    #scroll element into view     xpath://a[contains(text(),'Mauritania')]     #scrolls until the element is found..uses python
    Execute Javascript     window.scrollTo(0,document.body.scrollHeight)    #scrolls till end ...uses javascript
    sleep   3