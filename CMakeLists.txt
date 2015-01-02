cmake_minimum_required(VERSION 3.1)
project(tinyxpath)

include_directories(${tinyxml_INCLUDE_DIR})

set(tinyxpath_SRC
  action_store.cpp tinystr.cpp xml_util.cpp xpath_stream.cpp
  tinyxml.cpp xpath_expression.cpp xpath_syntax.cpp lex_util.cpp
  tinyxmlerror.cpp xpath_processor.cpp tinyxmlparser.cpp xpath_stack.cpp
  node_set.cpp tokenlist.cpp xpath_static.cpp)

add_library(tinyxpath ${tinyxpath_SRC})
