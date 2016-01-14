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
  let $zip-manifest :=
    <parts xmlns="xdmp:zip">
      <part>docProps/app.xml</part>
      <part>docProps/core.xml</part>
    </parts> 
  let $zip := 
    xdmp:zip-create(
      $zip-manifest,
      (
        fn:doc("/template.pptx/docProps/app.xml"),
        fn:doc("/template.pptx/docProps/core.xml")
      )
    ) 
  return 
  (
    map:put($context, "output-types", "application/zip"),
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
