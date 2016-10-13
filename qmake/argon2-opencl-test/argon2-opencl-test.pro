TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

LIBS += -lOpenCL

SOURCES += \
    ../../src/argon2-opencl-test/main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../argon2-opencl/release/ -largon2-opencl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../argon2-opencl/debug/ -largon2-opencl
else:unix: LIBS += -L$$OUT_PWD/../argon2-opencl/ -largon2-opencl

INCLUDEPATH += $$PWD/../../include
DEPENDPATH += $$PWD/../../include
