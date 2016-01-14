declare namespace ism = "urn:us:gov:ic:ism";
let $comp := fn:doc("/component-1.xml")
let $slide :=
  <p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main" xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
    <p:cSld>
      <p:spTree>
        <p:nvGrpSpPr>
          <p:cNvPr id="1" name=""/>
          <p:cNvGrpSpPr/>
          <p:nvPr/>
        </p:nvGrpSpPr>
        <p:grpSpPr>
          <a:xfrm>
            <a:off x="0" y="0"/>
            <a:ext cx="0" cy="0"/>
            <a:chOff x="0" y="0"/>
            <a:chExt cx="0" cy="0"/>
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
              <a:off x="990600" y="228600"/>
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
                <a:t>{$comp/*:component/*:name/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="4" name="TextBox 3"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="1241321" y="1381240"/>
              <a:ext cx="7428829" cy="369332"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
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
              <a:off x="762000" y="914400"/>
              <a:ext cx="8229600" cy="2133600"/>
            </a:xfrm>
          </p:spPr>
          <p:txBody>
            <a:bodyPr>
              <a:normAutofit fontScale="85000" lnSpcReduction="20000"/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>NUMBER : {$comp/*:component/*:number/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr lang="en-US" smtClean="0" sz="1400"/>
                <a:t>CLASS</a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:class/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>SPONSORS: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:sponsors/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>CUSTOMERS </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:customers/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>PARTNERS: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:partners/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>TRANSITION AGENT: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:transition-agent/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>CONTRACT: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:contract/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>STAKEHOLDERS: </a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:stakeholders/text()} </a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>STATE</a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:state/text()} </a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>STRATEGY</a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:strategy/text()} </a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>ISSUES</a:t>
              </a:r>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$comp/*:component/*:issues/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
            </a:p>
            <a:p>
              <a:pPr indent="0" marL="0">
                <a:buNone/>
              </a:pPr>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:graphicFrame>
          <p:nvGraphicFramePr>
            <p:cNvPr id="11" name="Table 10"/>
            <p:cNvGraphicFramePr>
              <a:graphicFrameLocks noGrp="1"/>
            </p:cNvGraphicFramePr>
            <p:nvPr>
              <p:extLst>
                <p:ext uri="{{D42A27DB-BD31-4B8C-83A1-F6EECF244321}}">
                  <p14:modId val="1679982817" xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main"/>
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="838200" y="3352800"/>
            <a:ext cx="7924801" cy="1999380"/>
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr bandRow="1" firstRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}} </a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="1132114"/>
                  <a:gridCol w="1253848"/>
                  <a:gridCol w="1463227"/>
                  <a:gridCol w="1056640"/>
                  <a:gridCol w="1056640"/>
                  <a:gridCol w="830218"/>
                  <a:gridCol w="1132114"/>
                </a:tblGrid>
                <a:tr h="347579">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Burn</a:t>
                        </a:r>
                        <a:r>
                          <a:rPr baseline="0" dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>rate</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Schedule</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Performance</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Funding</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Sustain</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Risk</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Issues</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                </a:tr>

              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
        <p:graphicFrame>
          <p:nvGraphicFramePr>
            <p:cNvPr id="5" name="Table 4"/>
            <p:cNvGraphicFramePr>
              <a:graphicFrameLocks noGrp="1"/>
            </p:cNvGraphicFramePr>
            <p:nvPr>
              <p:extLst>
                <p:ext uri="{{D42A27DB-BD31-4B8C-83A1-F6EECF244321}}">
                  <p14:modId val="3175131442" xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main"/>
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="838200" y="5638800"/>
            <a:ext cx="6096000" cy="741680"/>
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr bandRow="1" firstRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}}</a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="2032000"/>
                  <a:gridCol w="2032000"/>
                  <a:gridCol w="2032000"/>
                </a:tblGrid>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Funding</a:t>
                        </a:r>
                        <a:r>
                          <a:rPr baseline="0" dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Type</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Fiscal</a:t>
                        </a:r>
                        <a:r>
                          <a:rPr baseline="0" dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Year</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                          <a:t>Status</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                </a:tr>
                <a:tr h="370840">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                </a:tr>
              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
      </p:spTree>
      <p:extLst>
        <p:ext uri="{{BB962C8B-B14F-4D97-AF65-F5344CB8AC3E}}">
          <p14:creationId val="657778885" xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main"/>
        </p:ext>
      </p:extLst>
    </p:cSld>
    <p:clrMapOvr>
      <a:masterClrMapping/>
    </p:clrMapOvr>
  </p:sld>
return
(:xdmp:document-insert("/content/Users/adhavle/Demos/Q4-2015/marklogic-powerpoint-master/src/main/resources/powerpoint/ppt/slides/slide1.xml", $ppt-template-simple):)
  xdmp:save("/Users/adhavle/Demos/Q4-2015/powerpoint/marklogic-powerpoint/src/main/resources/powerpoint/ppt/slides/slide2.xml", $slide)