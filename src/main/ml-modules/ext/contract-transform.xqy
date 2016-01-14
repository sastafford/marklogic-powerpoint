xquery version "1.0-ml";

let $sample := fn:doc("/sample.xml")
let $slide:=
  <p:sld xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main" xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
    <p:cSld>
      <p:spTree>
        <p:nvGrpSpPr>
          <p:cNvPr id="1" name="" />
          <p:cNvGrpSpPr />
          <p:nvPr />
        </p:nvGrpSpPr>
        <p:grpSpPr>
          <a:xfrm>
            <a:off x="0" y="0" />
            <a:ext cx="0" cy="0" />
            <a:chOff x="0" y="0" />
            <a:chExt cx="0" cy="0" />
          </a:xfrm>
        </p:grpSpPr>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="2" name="Title 1" />
            <p:cNvSpPr>
              <a:spLocks noGrp="1" />
            </p:cNvSpPr>
            <p:nvPr>
              <p:ph type="ctrTitle" />
            </p:nvPr>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="1020002" y="586887" />
              <a:ext cx="7772400" cy="614728" />
            </a:xfrm>
            <a:solidFill>
              <a:srgbClr val="DCE6F2" />
            </a:solidFill>
          </p:spPr>
          <p:txBody>
            <a:bodyPr>
              <a:normAutofit fontScale="90000" />
            </a:bodyPr>
            <a:lstStyle />
            <a:p>
              <a:r>
                <a:rPr lang="en-US" dirty="0" smtClean="0" />
                <a:t>{$sample/contract/name/text()}</a:t>
              </a:r>
              <a:endParaRPr lang="en-US" dirty="0" />
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="4" name="TextBox 3" />
            <p:cNvSpPr txBox="1" />
            <p:nvPr />
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="1241321" y="1381240" />
              <a:ext cx="7428829" cy="369332" />
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst />
            </a:prstGeom>
            <a:noFill />
          </p:spPr>
          <p:txBody>
            <a:bodyPr wrap="square" rtlCol="0">
              <a:spAutoFit />
            </a:bodyPr>
            <a:lstStyle />
            <a:p>
              <a:pPr algn="ctr" />

              <a:r>
                <a:rPr lang="en-US" dirty="0" smtClean="0" />
                <a:t>{$sample/contract/purpose/text()}</a:t>
              </a:r>
              <a:endParaRPr lang="en-US" dirty="0" />
            </a:p>
          </p:txBody>
        </p:sp>
        <p:graphicFrame>
          <p:nvGraphicFramePr>
            <p:cNvPr id="7" name="Table 6" />
            <p:cNvGraphicFramePr>
              <a:graphicFrameLocks noGrp="1" />
            </p:cNvGraphicFramePr>
            <p:nvPr>
              <p:extLst>
                <p:ext uri="{{D42A27DB-BD31-4B8C-83A1-F6EECF244321}}">
                  <p14:modId xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" val="278749714" />
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="1881075" y="1858445" />
            <a:ext cx="6349840" cy="741680" />
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr firstRow="1" bandRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}}</a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="1277750" />
                  <a:gridCol w="1277750" />
                  <a:gridCol w="1277750" />
                  <a:gridCol w="1265718" />
                  <a:gridCol w="1250872" />
                </a:tblGrid>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Type</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Ceiling</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Funding</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Start Date</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>End Date</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                </a:tr>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>{$sample/contract/type/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>{$sample/contract/ceiling/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>{$sample/contract/funding-status/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>{$sample/contract/period-of-performance-start/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="fi-FI" dirty="0" smtClean="0" />
                          <a:t>{$sample/contract/period-of-performance-end/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                </a:tr>
              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
        <p:graphicFrame>
          <p:nvGraphicFramePr>
            <p:cNvPr id="9" name="Table 8" />
            <p:cNvGraphicFramePr>
              <a:graphicFrameLocks noGrp="1" />
            </p:cNvGraphicFramePr>
            <p:nvPr>
              <p:extLst>
                <p:ext uri="{{D42A27DB-BD31-4B8C-83A1-F6EECF244321}}">
                  <p14:modId xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" val="1554662600" />
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="1881075" y="2743297" />
            <a:ext cx="6349840" cy="1010920" />
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr firstRow="1" bandRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}}</a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="2071017" />
                  <a:gridCol w="4278823" />
                </a:tblGrid>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Prime Contractor</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" sz="1800" kern="1200" dirty="0" smtClean="0">
                            <a:solidFill>
                              <a:schemeClr val="dk1" />
                            </a:solidFill>
                            <a:latin typeface="+mn-lt" />
                            <a:ea typeface="+mn-ea" />
                            <a:cs typeface="+mn-cs" />
                          </a:rPr>
                          <a:t>{$sample/contract/prime-contractor/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" sz="1800" kern="1200" dirty="0">
                          <a:solidFill>
                            <a:schemeClr val="dk1" />
                          </a:solidFill>
                          <a:latin typeface="+mn-lt" />
                          <a:ea typeface="+mn-ea" />
                          <a:cs typeface="+mn-cs" />
                        </a:endParaRPr>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:schemeClr val="accent1">
                          <a:lumMod val="20000" />
                          <a:lumOff val="80000" />
                        </a:schemeClr>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                </a:tr>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" sz="1800" b="1" kern="1200" dirty="0" smtClean="0">
                            <a:solidFill>
                              <a:schemeClr val="lt1" />
                            </a:solidFill>
                            <a:latin typeface="+mn-lt" />
                            <a:ea typeface="+mn-ea" />
                            <a:cs typeface="+mn-cs" />
                          </a:rPr>
                          <a:t>Follow-on</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:schemeClr val="accent1" />
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" sz="1800" b="1" kern="1200" dirty="0" smtClean="0">
                            <a:solidFill>
                              <a:schemeClr val="dk1" />
                            </a:solidFill>
                            <a:latin typeface="+mn-lt" />
                            <a:ea typeface="+mn-ea" />
                            <a:cs typeface="+mn-cs" />
                          </a:rPr>
                          <a:t>{$sample/contract/follow-on/text()}</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" sz="1800" b="1" kern="1200" dirty="0">
                          <a:solidFill>
                            <a:schemeClr val="dk1" />
                          </a:solidFill>
                          <a:latin typeface="+mn-lt" />
                          <a:ea typeface="+mn-ea" />
                          <a:cs typeface="+mn-cs" />
                        </a:endParaRPr>
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                </a:tr>
              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
        <p:graphicFrame>
          <p:nvGraphicFramePr>
            <p:cNvPr id="11" name="Table 10" />
            <p:cNvGraphicFramePr>
              <a:graphicFrameLocks noGrp="1" />
            </p:cNvGraphicFramePr>
            <p:nvPr>
              <p:extLst>
                <p:ext uri="{{D42A27DB-BD31-4B8C-83A1-F6EECF244321}}">
                  <p14:modId xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" val="2099691409" />
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="1881075" y="3975016" />
            <a:ext cx="6349840" cy="1483360" />
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr firstRow="1" bandRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}}</a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="1269968" />
                  <a:gridCol w="1269968" />
                  <a:gridCol w="1269968" />
                  <a:gridCol w="1269968" />
                  <a:gridCol w="1269968" />
                </a:tblGrid>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Task Name</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Start Date</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>End Date</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Duration</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr />
                      <a:lstStyle />
                      <a:p>
                        <a:r>
                          <a:rPr lang="en-US" dirty="0" smtClean="0" />
                          <a:t>Status</a:t>
                        </a:r>
                        <a:endParaRPr lang="en-US" dirty="0" />
                      </a:p>
                    </a:txBody>
                    <a:tcPr />
                  </a:tc>
                </a:tr>
                {
                  for $task in $sample/contract/*:schedule/*:task
                  return
                    <a:tr h="370840">
                      <a:tc>
                        <a:txBody>
                          <a:bodyPr />
                          <a:lstStyle />
                          <a:p>
                            <a:r>
                              <a:rPr lang="en-US" dirty="0" smtClean="0" />
                              <a:t>{$task/*:name/text()}</a:t>
                            </a:r>
                            <a:endParaRPr lang="en-US" dirty="0" />
                          </a:p>
                        </a:txBody>
                        <a:tcPr />
                      </a:tc>
                      <a:tc>
                        <a:txBody>
                          <a:bodyPr />
                          <a:lstStyle />
                          <a:p>
                            <a:r>
                              <a:rPr lang="is-IS" dirty="0" smtClean="0" />
                              <a:t>{$task/*:start-date/text()}</a:t>
                            </a:r>
                            <a:endParaRPr lang="en-US" dirty="0" />
                          </a:p>
                        </a:txBody>
                        <a:tcPr />
                      </a:tc>
                      <a:tc>
                        <a:txBody>
                          <a:bodyPr />
                          <a:lstStyle />
                          <a:p>
                            <a:r>
                              <a:rPr lang="is-IS" dirty="0" smtClean="0" />
                              <a:t>{$task/*:end-date/text()}</a:t>
                            </a:r>
                            <a:endParaRPr lang="en-US" dirty="0" />
                          </a:p>
                        </a:txBody>
                        <a:tcPr />
                      </a:tc>
                      <a:tc>
                        <a:txBody>
                          <a:bodyPr />
                          <a:lstStyle />
                          <a:p>
                            <a:r>
                              <a:rPr lang="en-US" dirty="0" smtClean="0" />
                              <a:t>{$task/*:duration-days/text()}</a:t>
                            </a:r>
                            <a:endParaRPr lang="en-US" dirty="0" />
                          </a:p>
                        </a:txBody>
                        <a:tcPr />
                      </a:tc>
                      <a:tc>
                        <a:txBody>
                          <a:bodyPr />
                          <a:lstStyle />
                          <a:p>
                            <a:r>
                              <a:rPr lang="en-US" dirty="0" smtClean="0" />
                              <a:t>{$task/*:status/text()}</a:t>
                            </a:r>
                            <a:endParaRPr lang="en-US" dirty="0" />
                          </a:p>
                        </a:txBody>
                        <a:tcPr />
                      </a:tc>
                    </a:tr>
                }
              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
      </p:spTree>
      <p:extLst>
        <p:ext uri="{{BB962C8B-B14F-4D97-AF65-F5344CB8AC3E}}">
          <p14:creationId xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" val="2670298589" />
        </p:ext>
      </p:extLst>
    </p:cSld>
    <p:clrMapOvr>
      <a:masterClrMapping />
    </p:clrMapOvr>
  </p:sld>
return
(:xdmp:document-insert("/content/Users/adhavle/Demos/Q4-2015/marklogic-powerpoint-master/src/main/resources/powerpoint/ppt/slides/slide1.xml", $ppt-template-simple):)
  (
    xdmp:log("now saving template"),
    xdmp:save("/Users/adhavle/Demos/Q4-2015/marklogic-powerpoint-master/src/main/resources/powerpoint/ppt/slides/slide1.xml" , $slide)
  )