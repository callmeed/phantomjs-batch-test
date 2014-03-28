page = require('webpage').create()
system = require('system')
fs = require('fs')
content = ''
lines = []
url = ''
img = ''
counter = 0

# Set viewport and user agent
page.viewportSize = { width: 1200, height: 800 }
console.log 'The default user agent is: ' + page.settings.userAgent
page.settings.userAgent = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.71 Safari/537.36'
console.log 'Setting user agent to: ' + page.settings.userAgent
# Read the list of sites into an array
f = fs.open("sites.txt", "r")
content = f.read()
lines = content.split("\n")


# Grab a screen
grab_screen = -> 
  site = lines[counter]
  url = 'http://' + site + '/'
  img = 'screens/' + site + '.png'
  console.log("Grabbing screen for: " + url)
  page.open url, (status) ->
    window.setTimeout(-> 
      page.render(img)
      counter++
      next_screen()
    , 2000)
    # setTimeout(next_screen,100)

next_screen = -> 
  console.log("On to " + counter + " ...")
  if counter < lines.length
    grab_screen()
  else
    phantom.exit()

next_screen()