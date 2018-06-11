MACRO(GETLEMON VAR)
  SET(LEMON_REF 33892e2a243865f73e6c6e7cecce3c6eb4bb95db4a3d9d86d146c8064feb92fd)
  SET(LEMPAR_REF bf7db78e7213f1d51516710483eab506fd52bf632c7abfb3e2e9b885c90c03e1)
  ADD_CUSTOM_COMMAND(
    OUTPUT
    ${CMAKE_CURRENT_BINARY_DIR}/lemon.c
    BYPRODUCTS
    ${CMAKE_CURRENT_BINARY_DIR}/lempar.c
    COMMAND
    wget "https://sqlite.org/src/raw/tool/lemon.c?name=${LEMON_REF}" --quiet -O ${CMAKE_CURRENT_BINARY_DIR}/lemon.c
    COMMAND
    wget "https://sqlite.org/src/raw/tool/lempar.c?name=${LEMPAR_REF}" --quiet -O ${CMAKE_CURRENT_BINARY_DIR}/lempar.c
    )
  LIST(APPEND ${VAR} ${CMAKE_CURRENT_BINARY_DIR}/lemon.c)
ENDMACRO()
