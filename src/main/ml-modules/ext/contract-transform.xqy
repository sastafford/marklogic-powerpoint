xquery version "1.0-ml";

declare namespace c = "http://marklogic.com/program360/contract";
declare namespace ism = "urn:us:gov:ic:ism";
declare namespace p = "http://schemas.openxmlformats.org/presentationml/2006/main";
declare namespace a="http://schemas.openxmlformats.org/drawingml/2006/main";
declare namespace r = "http://schemas.openxmlformats.org/officeDocument/2006/relationships";
declare namespace sch = "http://marklogic.com/program360/schedule";

declare variable $CONTRACT-URI as xs:string external;	

let $contract := fn:doc($CONTRACT-URI)
let $classification := $contract/*:contract/*:name/@*:classification
let $slide :=
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
            <p:cNvPr id="2" name="Title 1"/>
            <p:cNvSpPr>
              <a:spLocks noGrp="1"/>
            </p:cNvSpPr>
            <p:nvPr>
              <p:ph type="ctrTitle"/>
            </p:nvPr>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="1020002" y="586887"/>
              <a:ext cx="7772400" cy="614728"/>
            </a:xfrm>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr>
              <a:normAutofit fontScale="90000"/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                <a:t>{fn:concat(fn:concat("(",$classification),") ")} {$contract/*:contract/*:name/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US"/>
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
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="3" name="Subtitle 3"/>
            <p:cNvSpPr>
              <a:spLocks noGrp="1"/>
            </p:cNvSpPr>
            <p:nvPr>
              <p:ph idx="1"/>
            </p:nvPr>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="762000" y="1447800"/>
              <a:ext cx="8229600" cy="1905000"/>
            </a:xfrm>
          </p:spPr>
          <p:txBody>
            <a:bodyPr/>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>NUMBER : {$contract/*:contract/*:number/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>PURPOSE : {fn:concat(fn:concat("(",$classification),") ")} {$contract/*:contract/*:purpose/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>TYPE : {$contract/*:contract/*:type/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>CEILING : {$contract/*:contract/*:ceiling/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>FUNDING STATUS : {$contract/*:contract/*:funding-status/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>PERIOD OF PERFORMANCE : {$contract/*:contract/*:period-of-performance-start/text()} - {$contract/*:contract/*:period-of-performance-end/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>PRIME CONTRACTOR : {$contract/*:contract/*:prime-contractor/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>FOLLOW ON: {$contract/*:contract/*:follow-on/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
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
                </a:tr>{
                for $t in $contract/*:contract/*:schedule/*:task
                return
                  <a:tr h="370840">
                    <a:tc>
                      <a:txBody>
                        <a:bodyPr />
                        <a:lstStyle />
                        <a:p>
                          <a:r>
                            <a:rPr lang="en-US" dirty="0" smtClean="0" />
                            <a:t>{$t/*:name/text()}</a:t>
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
                            <a:t>{$t/*:start-date/text()}</a:t>
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
                            <a:t>{$t/*:end-date/text()}</a:t>
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
                            <a:t>{$t/*:duration-days/text()}</a:t>
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
                            <a:t>{$t/*:status/text()}</a:t>
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
return $slide
