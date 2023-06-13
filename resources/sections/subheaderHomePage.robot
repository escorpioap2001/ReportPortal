*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${headerLogo}  xpath:.//a/img[@alt="Tricentis Demo Web Shop"][@src="/Themes/DefaultClean/Content/images/logo.png"]
${loginLink}  class:ico-login
${booksLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/books"]
${computersLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/computers"]
${electronicsLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/electronics"]
${apparel&shoesLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/apparel-shoes"]
${ddownloadsLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/digital-downloads"]
${jewelryLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/jewelry"]
${giftcardsLink}  xpath:.//div[@class="header-menu"]/ul[@class="top-menu"]/li/a[@href="/gift-cards"]
${linkDesktops}=  xpath:.//ul[@class='sublist']/li/a[@href][contains(text(),'Desktops')]
${linkNotebooks}=  xpath:.//ul[@class='sublist']/li/a[@href][contains(text(),'Notebooks')]
${linkAccessories}=  xpath:.//ul[@class='sublist']/li/a[@href][contains(text(),'Accessories')]
${linkElectronics}=  xpath:.//a[@href="/electronics"]
${linkCameras}=  xpath:.//ul[@class='sublist']/li/a[@href][contains(text(),'Camera, photo')]
${linkCellphones}=  xpath:.//ul[@class='sublist']/li/a[@href][contains(text(),'Cell phones')]

*** Keywords ***

Click Link of Books
    Click Link  ${booksLink}

Click Link of Computers
    Click Link  ${computersLink}

Click Link of Desktops
    Click Link  ${computersLink}
    Click Link  ${linkDesktops}

Click Link of Notebooks
    Click Link  ${computersLink}
    Click Link  ${linkNotebooks}

Click Link of Accessories
    Click Link  ${computersLink}
    Click Link  ${linkAccessories}

Click Link of Electronics
    Click Link  ${electronicsLink}

Click Link of Camera, photo
    Click Link  ${electronicsLink}
    Click Link  ${linkCameras}

Click Link of Cell phones
    Click Link  ${electronicsLink}
    Click Link  ${linkCellphones}

Click Link of Apparel & Shoes
    Click Link  ${apparel&shoesLink}

Click Link of Digital downloads
    Click Link  ${ddownloadsLink}

Click Link of Jewelry
    Click Link  ${jewelryLink}

Click Link of Gift Cards
    Click Link  ${giftcardsLink}