xquery version "1.0-ml";

module namespace resource = "http://marklogic.com/rest-api/resource/export-presentation-ml";

declare namespace html = "http://www.w3.org/1999/xhtml";
declare namespace zip = "xdmp:zip";

declare function get(
  $context as map:map,
  $params  as map:map
  ) as document-node()*
{
  let $dir := map:get($params, "dir")
  let $template := (map:get($params, "template"), "template")[1]
  let $uris := cts:uris("", (), cts:directory-query("/template.pptx/", "infinity"))
  let $zip-manifest :=
    element zip:parts {
      for $uri in $uris
      return 
        if (fn:contains($uri, "Content_Types")) then
          element zip:part { "[Content_Types].xml" } 
        else 
          element zip:part { fn:replace($uri, "/template.pptx/", "") }
    }
  let $zip := 
    xdmp:zip-create(
      $zip-manifest,
      (
        for $uri in $uris
        return fn:doc($uri)
      )
    ) 
  return 
  (
    (: Uncomment this line to return a PPTX file :)
    map:put($context, "output-types", "application/vnd.openxmlformats-officedocument.presentationml.presentation"),  
    (: map:put($context, "output-types", "application/zip"), :)
    document{ binary {$zip} }
  )
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
