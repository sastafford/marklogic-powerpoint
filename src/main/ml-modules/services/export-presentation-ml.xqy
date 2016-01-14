xquery version "1.0-ml";

module namespace resource = "http://marklogic.com/rest-api/resource/export-presentation-ml";

declare function get(
  $context as map:map,
  $params  as map:map
  ) as document-node()*
{
  document {
    text { 
      let $dir := map:get($params, "dir")
      let $template := (map:get($params, "template"), "template")[1]
      for $uri in cts:uris("", (), cts:directory-query(fn:concat("/", $template, ".pptx/"), "infinity"))
      return $uri
    }
  }
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
