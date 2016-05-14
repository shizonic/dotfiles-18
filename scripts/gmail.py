#!/usr/bin/env python

########################################################################
# A script to notify the number of unread new mails
# be used with ~/.conkyrc to work with i3status bar
########################################################################

from urllib.request import FancyURLopener

email = 'yourmailhere' # @gmail.com can be left out
password  = 'yourpasswordhere'

url = 'https://%s:%s@mail.google.com/mail/feed/atom' % (email, password)

opener = FancyURLopener()
page = opener.open(url)

contents = page.read().decode('utf-8')

ifrom = contents.index('<fullcount>') + 11
ito   = contents.index('</fullcount>')

fullcount = contents[ifrom:ito]

print(fullcount + ' new')
