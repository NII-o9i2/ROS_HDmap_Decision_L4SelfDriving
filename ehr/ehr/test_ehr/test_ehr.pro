QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


INCLUDEPATH += ./include \
        ./include/API \

SOURCES += \
        main.cpp \
        user/datasRecord.cpp \

HEADERS += \
        include/CMGeoCoord.h \
        include/API/API.h \
        include/API/av3hr_msgconstants.h \
        include/API/av3hr_msgdefine.h \


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DESTDIR = $$PWD/bin

#加载库有先后顺序，底层支持库要放在最后加载
unix: LIBS += -L$$DESTDIR/../lib -lAPI
unix: LIBS += -L$$DESTDIR/../lib -lMapEngine
unix: LIBS += -L$$DESTDIR/../lib -lCommon
unix: LIBS += -L$$DESTDIR/../lib -lzmq
unix: LIBS += -L$$DESTDIR/../lib -lprotobuf


