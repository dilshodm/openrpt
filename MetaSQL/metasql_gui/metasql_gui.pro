#
# OpenRPT report writer and rendering engine
# Copyright (C) 2001-2016 by OpenMFG, LLC
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Please contact info@openmfg.com with any questions on this license.
#

include( ../../global.pri )

TEMPLATE = app
CONFIG += qt warn_on
QT     +=  sql xml widgets  printsupport

INCLUDEPATH += .. ../tmp ../../common $$OUT_PWD/../MetaSQL/tmp  $$OUT_PWD/../../common
DEPENDPATH  += .. ../tmp ../../common $$OUT_PWD/../MetaSQL/tmp  $$OUT_PWD/../../common

unix:TARGET=metasql
DESTDIR = ../../bin
UI_DIR = tmp
MOC_DIR = tmp
OBJECTS_DIR = tmp

QMAKE_LIBDIR = ../../lib $$QMAKE_LIBDIR
LIBS += -lMetaSQL -lopenrptcommon

# Input

SOURCES += main.cpp

win32-msvc* {
  PRE_TARGETDEPS += ../../lib/MetaSQL.$${LIBEXT}
  PRE_TARGETDEPS += ../../lib/openrptcommon.$${LIBEXT}
} else {
  PRE_TARGETDEPS += ../../lib/libMetaSQL.$${LIBEXT}
  PRE_TARGETDEPS += ../../lib/libopenrptcommon.$${LIBEXT}
}
