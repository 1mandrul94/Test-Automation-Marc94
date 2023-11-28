#Home Page Locators
HomePageHeading = '//*[@id="content"]/h1'
AddRemoveElement ='//*[@id="content"]/ul/li[2]/a'
BrokenImages = '//*[@id="content"]/ul/li[4]/a'
ChallengingDom = '//*[@id="content"]/ul/li[5]/a'
Checkboxes = '//*[@id="content"]/ul/li[6]/a'
ContextMenu = '//*[@id="content"]/ul/li[7]/a'
DragAndDrop = '//*[@id="content"]/ul/li[10]/a'

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
BlueButton = '//*[@class="button"]'
RedButton = '//*[@class="button alert"]'
GreenButton = '//*[@class="button success"]'

#Checkboxes Page
CheckboxesHeading = '//*[contains(text(), "Checkboxes")]'
Checkbox1 = '//*[@id="checkboxes"]/input[1]'
Checkbox2 = '//*[@id="checkboxes"]/input[2]'

#Context Menu Page
ContextMenuHeading = '//*[contains(text(), "Context Menu")]'
ContextMenuBox = 'id:hot-spot'

#Drag and Drop
DragAndDropHeading = '//*[contains(text(), "Drag and Drop")]'
ColumnA = 'id:column-a'
ColumnB = 'id:column-b'