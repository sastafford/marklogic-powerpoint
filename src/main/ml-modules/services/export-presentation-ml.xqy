xquery version "1.0-ml";

module namespace resource = "http://marklogic.com/rest-api/resource/export-presentation-ml";

declare namespace html = "http://www.w3.org/1999/xhtml";

declare function get(
  $context as map:map,
  $params  as map:map
  ) as document-node()*
{
  let $dir := map:get($params, "dir")
  let $template := (map:get($params, "template"), "template")[1]
  let $doc :=
    document {
      element html:html {
        element html:body {
          element html:p { fn:concat("dir: ", $dir) },
          element html:p { fn:concat("template: ", $template) },
          for $uri in cts:uris("", (), cts:directory-query(fn:concat("/", $template, ".pptx/"), "infinity"))
          return element html:p { $uri }
        }
      }
    } 
  return $doc
};

declare function put(
  $context as map:map,
  $params  as map:map,
  $input   as document-node()*
  ) as document-node()?
{
  xdmp:log("PUT called")
};

declare function post(
  $context as map:map,
  $params  as map:map,
  $input   as document-node()*
  ) as document-node()*
{
  xdmp:log("POST called")
};

declare function delete(
  $context as map:map,
  $params  as map:map
  ) as document-node()?
{
  xdmp:log("DELETE called")
};
