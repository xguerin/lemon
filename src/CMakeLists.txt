GETLEMON(SOURCES)
add_executable(lemon ${SOURCES})
install(TARGETS lemon RUNTIME DESTINATION bin)
