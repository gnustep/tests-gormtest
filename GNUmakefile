#
#  Test apps makefile for GNUstep X/RAW GUI Backend
#
#  Copyright (C) 1997 Free Software Foundation, Inc.
#
#  Author: Scott Christley <scottc@net-community.com>
#  Author: Felipe A. Rodriguez <far@ix.netcom.com>
#
#  This file is part of the GNUstep X/RAW GUI Backend.
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Library General Public
#  License as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later version.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
#  Library General Public License for more details.
#
#  If you are interested in a warranty or support for this source code,
#  contact Scott Christley at scottc@net-community.com
#
#  You should have received a copy of the GNU Library General Public
#  License along with this library; see the file COPYING.LIB.
#  If not, write to the Free Software Foundation,
#  59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

#gormtest_MAIN_MODEL_FILE = testnew.gorm
gormtest_MAIN_MODEL_FILE = gormtest.gorm
#gormtest_MAIN_MODEL_FILE = gormtest2.gorm
#gormtest_MAIN_MODEL_FILE = customview.nib
#gormtest_MAIN_MODEL_FILE = viewtemplate.nib
#gormtest_MAIN_MODEL_FILE = normal.nib
#gormtest_MAIN_MODEL_FILE = box.nib
#gormtest_MAIN_MODEL_FILE = viewtemplate2.nib
#gormtest_MAIN_MODEL_FILE = textview.nib
#gormtest_MAIN_MODEL_FILE = textview2.nib
#gormtest_MAIN_MODEL_FILE = busybox.nib
#gormtest_MAIN_MODEL_FILE = busybox.gorm
#gormtest_MAIN_MODEL_FILE = menutest.nib
#gormtest_MAIN_MODEL_FILE = empty.nib
#gormtest_MAIN_MODEL_FILE = window.nib
#gormtest_MAIN_MODEL_FILE = view.nib
#gormtest_MAIN_MODEL_FILE = colorandtable.nib
#gormtest_MAIN_MODEL_FILE = scrollview.nib
#gormtest_MAIN_MODEL_FILE = table.gorm
#gormtest_MAIN_MODEL_FILE = buttons.nib
#gormtest_MAIN_MODEL_FILE = bigtext.nib
#gormtest_MAIN_MODEL_FILE = textfield.nib
#gormtest_MAIN_MODEL_FILE = tvonly.nib
#gormtest_MAIN_MODEL_FILE = gormtext.gorm
#gormtest_MAIN_MODEL_FILE = ovonly.nib
#gormtest_MAIN_MODEL_FILE = ovgorm.gorm
#gormtest_MAIN_MODEL_FILE = sliders.nib
#gormtest_MAIN_MODEL_FILE = switch.nib
#gormtest_MAIN_MODEL_FILE = textfields.nib
#gormtest_MAIN_MODEL_FILE = drawer.nib
#gormtest_MAIN_MODEL_FILE = image.nib
#gormtest_MAIN_MODEL_FILE = viewonly.nib
#gormtest_MAIN_MODEL_FILE = normalmenu.nib
#gormtest_MAIN_MODEL_FILE = buttongs.nib
#gormtest_MAIN_MODEL_FILE = tabbrowser.nib
#gormtest_MAIN_MODEL_FILE = controls.nib

include $(GNUSTEP_MAKEFILES)/common.make

# The application to be compiled
APP_NAME = gormtest

# The Objective-C source files to be compiled
gormtest_OBJC_FILES = gormtest_main.m \
	LoginWindow.m GSOutlineView.m \
        TestButton.m GSTabView.m GSTableView.m \
	GSMenuItem.m GSTextView.m MyTestButton.m GSStepper.m \
	GSImageView.m GSColorWell.m GSProgressIndicator.m \
	GSSlider.m GSBrowser.m GSMenu.m GSComboBox.m \
	GSPopUpButton.m GSSplitView.m GSScrollView.m \
	AppDelegate.m GSButtonCell.m GSWindow.m GSBox.m \
	MyTableDataSource.m MyOutlineDataSource.m \
	MyBrowserDelegate.m

# The Resource files to be copied into the app's resources directory
gormtest_RESOURCE_FILES = loginicon.tiff \
                   English.lproj/testnew.gorm \
                   English.lproj/gormtest.gorm \
                   English.lproj/customview.nib \
                   English.lproj/viewtemplate.nib \
                   English.lproj/normal.nib \
                   English.lproj/box.nib \
                   English.lproj/viewtemplate2.nib \
                   English.lproj/textview.nib \
                   English.lproj/textview2.nib \
                   English.lproj/busybox.nib \
                   English.lproj/menutest.nib \
                   English.lproj/colorandtable.nib \
                   English.lproj/scrollview.nib \
                   English.lproj/buttons.nib \
                   English.lproj/table.gorm \
		   English.lproj/bigtext.nib \
		   English.lproj/textfield.nib \
		   English.lproj/tvonly.nib \
		   English.lproj/ovonly.nib \
		   English.lproj/ovgorm.gorm \
		   English.lproj/sliders.nib \
		   English.lproj/gormtext.gorm \
		   English.lproj/switch.nib \
		   English.lproj/textfields.nib \
		   English.lproj/drawer.nib \
		   English.lproj/image.nib \
		   English.lproj/empty.nib \
		   English.lproj/window.nib \
		   English.lproj/view.nib \
		   English.lproj/viewonly.nib \
		   English.lproj/normalmenu.nib \
		   English.lproj/buttongs.nib \
		   English.lproj/tabbrowser.nib \
		   English.lproj/controls.nib \
		   English.lproj/gormtest2.gorm

#                   English.lproj/busybox.gorm \

-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/application.make
include $(GNUSTEP_MAKEFILES)/aggregate.make
-include GNUmakefile.postamble

