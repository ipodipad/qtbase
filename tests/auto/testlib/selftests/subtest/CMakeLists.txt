# Generated from subtest.pro.

#####################################################################
## subtest Binary:
#####################################################################

add_qt_executable(subtest
    NO_INSTALL # special case
    OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} # special case
    SOURCES
        tst_subtest.cpp
    PUBLIC_LIBRARIES
        Qt::Test
)

## Scopes:
#####################################################################
