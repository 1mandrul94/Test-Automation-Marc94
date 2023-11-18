#Home Page Locators
HomePageHeading = '//*[@id="content"]/h1'
AddRemoveElement ='//*[@id="content"]/ul/li[2]/a'
BrokenImages = '//*[@id="content"]/ul/li[4]/a'
ChallengingDom = '//*[@id="content"]/ul/li[5]/a'

#Add/Remove Element Page
AddRemoveHeading = '//*[@id="content"]/h3'
AddElementButton = '//*[@id="content"]/div/button'
DeleteButton = '//*[@id="elements"]/button'

#Basic Auth Page
BasicAuthLink = 'https://admin:admin@the-internet.herokuapp.com/basic_auth'
BasicAuthHeading = 'id:content'
BasicAuthHeading2 = 'xpath: //*[contains(text(), "Congratulations! You must have the proper credentials.")]'

#Broken Images Page
BrokenImagesHeading = '//*[contains(text(), "Broken Images")]'
AvatarImage = '//img[@src="img/avatar-blank.jpg"]'

#Challenging Dom Page
ChallengingDomHeading = '//*[contains(text(), "Challenging DOM")]'
