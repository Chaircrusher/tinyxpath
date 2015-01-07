cmake_minimum_required(VERSION 3.1)
project(tinyxpath)

include_directories(${tinyxml_INCLUDE_DIR} ${tinyxml_INCLUDE_DIR}/tinyxml)

set(tinyxpath_SRC
  action_store.cpp tinystr.cpp xml_util.cpp xpath_stream.cpp
  xpath_expression.cpp xpath_syntax.cpp lex_util.cpp
  xpath_processor.cpp xpath_stack.cpp
  node_set.cpp tokenlist.cpp xpath_static.cpp)

add_library(tinyxpath ${tinyxpath_SRC})

install(TARGETS tinyxpath
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
  )

set(include_FILES
action_store.h
byte_stream.h
htmlutil.h
lex_token.h
lex_util.h
node_set.h
tinystr.h
tinyxpath_conf.h
tokenlist.h
xml_util.h
xpath_expression.h
xpath_processor.h
xpath_stack.h
xpath_static.h
xpath_stream.h
xpath_syntax.h
)

INSTALL(FILES ${include_FILES}
  DESTINATION include/tinyxpath
  )
