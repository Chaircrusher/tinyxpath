for x in *.h *.cpp
do
sed -e 's/TiXmlNode::DOCUMENT/TiXmlNode::TINYXML_DOCUMENT/g' \
-e 's/TiXmlNode::ELEMENT/TiXmlNode::TINYXML_ELEMENT/g' \
-e 's/TiXmlNode::COMMENT/TiXmlNode::TINYXML_COMMENT/g' \
-e 's/TiXmlNode::UNKNOWN/TiXmlNode::TINYXML_UNKNOWN/g' \
-e 's/TiXmlNode::TEXT/TiXmlNode::TINYXML_TEXT/g' \
-e 's/TiXmlNode::DECLARATION/TiXmlNode::TINYXML_DECLARATION/g' \
-e 's/TiXmlNode::TYPECOUNT/TiXmlNode::TINYXML_TYPECOUNT/g' \
< $x > tmpfile && mv tmpfile $x
done
