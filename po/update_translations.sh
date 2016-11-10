#!/bin/sh
#
# Copyright: 2016 Discreete Linux Team <info@discreete-linux.org>
#
#  This program is free software; you can redistribute it and/or 
#  modify it under the terms of the GNU General Public License as 
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
# 
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
# 
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

LANGS="de_DE"

xgettext -d usb-imagewriter-ng --copyright-holder="Discreete Linux Team <info@discreete-linux.org>" \
    --package-name="usb-imagewriter-ng" --package-version="0.1" \
    --msgid-bugs-address="info@discreete-linux.org" \
    --language=Python --output=imagewriter-ng.pot ../imagewriter-ng
xgettext -d usb-imagewriter-ng --copyright-holder="Discreete Linux Team <info@discreete-linux.org>" \
    --package-name="usb-imagewriter-ng" --package-version="0.1" \
    --msgid-bugs-address="info@discreete-linux.org" \
    --language=Glade -j --output=imagewriter-ng.pot \
    ../share/usb-imagewriter-ng/imagewriter-ng.ui

# to create a lang specific .po file, run (replace de_DE and de.po with your data):
#msginit --input=imagewriter.pot --locale=de_DE -o de.po

# to create the actual messagefiles use:
#msgfmt --output-file=de/LC_MESSAGES/usb-imagewriter.mo de.po 
