xquery version "1.0-ml";

declare namespace c = "http://marklogic.com/program360/contract";
declare namespace ism = "urn:us:gov:ic:ism";
declare namespace p = "http://schemas.openxmlformats.org/presentationml/2006/main";
declare namespace a="http://schemas.openxmlformats.org/drawingml/2006/main";
declare namespace r = "http://schemas.openxmlformats.org/officeDocument/2006/relationships";
declare namespace sch = "http://marklogic.com/program360/schedule";

declare variable $PROJECT-URI as xs:string external;


let $project := fn:doc($PROJECT-URI)
let $classification := $project/*:component/*:name/@*:classification
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
            <p:cNvPr id="2" name="title"/>
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
              <a:noAutofit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="3600"/>
                <a:t>{fn:concat(fn:concat("(",$classification),") ")} {$project/*:component/*:name/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="3600"/>
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
                  <p14:modId val="3556452996" xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main"/>
                </p:ext>
              </p:extLst>
            </p:nvPr>
          </p:nvGraphicFramePr>
          <p:xfrm>
            <a:off x="4572000" y="3631220"/>
            <a:ext cx="4419601" cy="940780"/>
          </p:xfrm>
          <a:graphic>
            <a:graphicData uri="http://schemas.openxmlformats.org/drawingml/2006/table">
              <a:tbl>
                <a:tblPr bandRow="1" firstRow="1">
                  <a:tableStyleId>{{5C22544A-7EE6-4342-B048-85BDC9FD1C3A}}</a:tableStyleId>
                </a:tblPr>
                <a:tblGrid>
                  <a:gridCol w="533400"/>
                  <a:gridCol w="685800"/>
                  <a:gridCol w="914400"/>
                  <a:gridCol w="665481"/>
                  <a:gridCol w="589280"/>
                  <a:gridCol w="399869"/>
                  <a:gridCol w="631371"/>
                </a:tblGrid>
                <a:tr h="304800">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:r>
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Burn</a:t>
                        </a:r>
                        <a:r>
                          <a:rPr baseline="0" dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>rate</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Schedule</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Performance</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Funding</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Sustain</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Risk</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
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
                          <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1000"/>
                          <a:t>Issues</a:t>
                        </a:r>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr/>
                  </a:tc>
                </a:tr>
                <a:tr h="544540">
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="00B050"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="FFFF00"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="FF0000"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="00B050"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="FFFF00"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="FF0000"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                  <a:tc>
                    <a:txBody>
                      <a:bodyPr/>
                      <a:lstStyle/>
                      <a:p>
                        <a:endParaRPr dirty="0" lang="en-US" sz="1000"/>
                      </a:p>
                    </a:txBody>
                    <a:tcPr>
                      <a:solidFill>
                        <a:srgbClr val="00B050"/>
                      </a:solidFill>
                    </a:tcPr>
                  </a:tc>
                </a:tr>
              </a:tbl>
            </a:graphicData>
          </a:graphic>
        </p:graphicFrame>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="7" name="last-update"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="7010400" y="136071"/>
              <a:ext cx="1888350" cy="381000"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr lang="en-US" smtClean="0"/>
                <a:t>{$project/*:component/*:last-update}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:cxnSp>
          <p:nvCxnSpPr>
            <p:cNvPr id="10" name="Straight Connector 9"/>
            <p:cNvCxnSpPr/>
            <p:nvPr/>
          </p:nvCxnSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="1283732"/>
              <a:ext cx="8915400" cy="11668"/>
            </a:xfrm>
            <a:prstGeom prst="line">
              <a:avLst/>
            </a:prstGeom>
            <a:ln w="28575"/>
          </p:spPr>
          <p:style>
            <a:lnRef idx="1">
              <a:schemeClr val="accent1"/>
            </a:lnRef>
            <a:fillRef idx="0">
              <a:schemeClr val="accent1"/>
            </a:fillRef>
            <a:effectRef idx="0">
              <a:schemeClr val="accent1"/>
            </a:effectRef>
            <a:fontRef idx="minor">
              <a:schemeClr val="tx1"/>
            </a:fontRef>
          </p:style>
        </p:cxnSp>
        <p:grpSp>
          <p:nvGrpSpPr>
            <p:cNvPr id="39" name="Group 38"/>
            <p:cNvGrpSpPr/>
            <p:nvPr/>
          </p:nvGrpSpPr>
          <p:grpSpPr>
            <a:xfrm>
              <a:off x="0" y="914400"/>
              <a:ext cx="8991600" cy="5791200"/>
              <a:chOff x="0" y="914400"/>
              <a:chExt cx="8991600" cy="5791200"/>
            </a:xfrm>
          </p:grpSpPr>
          <p:cxnSp>
            <p:nvCxnSpPr>
              <p:cNvPr id="8" name="Straight Connector 7"/>
              <p:cNvCxnSpPr/>
              <p:nvPr/>
            </p:nvCxnSpPr>
            <p:spPr>
              <a:xfrm>
                <a:off x="76200" y="914400"/>
                <a:ext cx="8915400" cy="0"/>
              </a:xfrm>
              <a:prstGeom prst="line">
                <a:avLst/>
              </a:prstGeom>
              <a:ln w="28575"/>
            </p:spPr>
            <p:style>
              <a:lnRef idx="1">
                <a:schemeClr val="accent1"/>
              </a:lnRef>
              <a:fillRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:fillRef>
              <a:effectRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:effectRef>
              <a:fontRef idx="minor">
                <a:schemeClr val="tx1"/>
              </a:fontRef>
            </p:style>
          </p:cxnSp>
          <p:sp>
            <p:nvSpPr>
              <p:cNvPr id="9" name="requirement"/>
              <p:cNvSpPr txBox="1"/>
              <p:nvPr/>
            </p:nvSpPr>
            <p:spPr>
              <a:xfrm>
                <a:off x="0" y="914400"/>
                <a:ext cx="8991600" cy="369332"/>
              </a:xfrm>
              <a:prstGeom prst="rect">
                <a:avLst/>
              </a:prstGeom>
              <a:noFill/>
            </p:spPr>
            <p:txBody>
              <a:bodyPr rtlCol="0" wrap="square">
                <a:spAutoFit/>
              </a:bodyPr>
              <a:lstStyle/>
              <a:p>
                <a:r>
                  <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                  <a:t>Requirement:</a:t>
                </a:r>
                <a:endParaRPr dirty="0" lang="en-US"/>
              </a:p>
            </p:txBody>
          </p:sp>
          <p:cxnSp>
            <p:nvCxnSpPr>
              <p:cNvPr id="13" name="Straight Connector 12"/>
              <p:cNvCxnSpPr/>
              <p:nvPr/>
            </p:nvCxnSpPr>
            <p:spPr>
              <a:xfrm>
                <a:off x="4495800" y="1295400"/>
                <a:ext cx="0" cy="5410200"/>
              </a:xfrm>
              <a:prstGeom prst="line">
                <a:avLst/>
              </a:prstGeom>
              <a:ln w="28575"/>
            </p:spPr>
            <p:style>
              <a:lnRef idx="1">
                <a:schemeClr val="accent1"/>
              </a:lnRef>
              <a:fillRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:fillRef>
              <a:effectRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:effectRef>
              <a:fontRef idx="minor">
                <a:schemeClr val="tx1"/>
              </a:fontRef>
            </p:style>
          </p:cxnSp>
          <p:cxnSp>
            <p:nvCxnSpPr>
              <p:cNvPr id="15" name="Straight Connector 14"/>
              <p:cNvCxnSpPr/>
              <p:nvPr/>
            </p:nvCxnSpPr>
            <p:spPr>
              <a:xfrm>
                <a:off x="114300" y="3521018"/>
                <a:ext cx="8839200" cy="0"/>
              </a:xfrm>
              <a:prstGeom prst="line">
                <a:avLst/>
              </a:prstGeom>
              <a:ln w="28575"/>
            </p:spPr>
            <p:style>
              <a:lnRef idx="1">
                <a:schemeClr val="accent1"/>
              </a:lnRef>
              <a:fillRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:fillRef>
              <a:effectRef idx="0">
                <a:schemeClr val="accent1"/>
              </a:effectRef>
              <a:fontRef idx="minor">
                <a:schemeClr val="tx1"/>
              </a:fontRef>
            </p:style>
          </p:cxnSp>
        </p:grpSp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="27" name="description-label"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="4572000" y="1339334"/>
              <a:ext cx="4419600" cy="369332"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr b="1" dirty="0" lang="en-US" smtClean="0" u="sng"/>
                <a:t>PROJECT DESCRIPTION:</a:t>
              </a:r>
              <a:endParaRPr b="1" dirty="0" lang="en-US" u="sng"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="28" name="description"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="4724400" y="1828800"/>
              <a:ext cx="4174350" cy="584775"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:pPr indent="-285750" marL="285750">
                <a:buFont charset="0" pitchFamily="34" typeface="Arial"/>
                <a:buChar char="•"/>
              </a:pPr>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>{$project/*:component/*:description/text()}</a:t>
              </a:r>
            </a:p>
            <a:p>
              <a:endParaRPr dirty="0" lang="en-US" sz="1600"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="29" name="sponsor"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="3826209"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>SPONSOR: {fn:string-join($project/*:component//*:sponsor/text(),', ')}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="30" name="ic-mission-partners"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="4599486"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>IC MISSION PARTNERS: {fn:string-join($project/*:component//*:partner/text(),', ')}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="31" name="customer"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="4197106"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>CUSTOMER: {fn:string-join($project/*:component//*:customer/text(),', ')}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="32" name="ic-transition-agent"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="4957932"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>TRANSITION AGENT: {fn:string-join($project/*:component//*:transition-agent/text(),', ')}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="33" name="contract-name"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="5339715"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>Contract Name:{$project/*:component//*:contract/*:name/text()} </a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="34" name="prime"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="5709047"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>PRIME: {$project/*:component//*:prime/text()}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="35" name="interagency-agreement"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="6013847"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>INTERAGENCY AGREEMENT: {$project/*:component//*:interagency-agreement/text()} </a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="36" name="security-classification-guide"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="76200" y="6321623"/>
              <a:ext cx="4267200" cy="307777"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1400"/>
                <a:t>SECURITY CLASSIFICATION GUIDE: {$project/*:component//*:security-classification-guide/text()} </a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US" sz="1400"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="37" name="project-status-label"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="4533900" y="4773266"/>
              <a:ext cx="3429000" cy="369332"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr b="1" dirty="0" lang="en-US" smtClean="0" u="sng"/>
                <a:t>PROJECT STATUS</a:t>
              </a:r>
              <a:endParaRPr b="1" dirty="0" lang="en-US" u="sng"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="38" name="project-status"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="4572000" y="5096470"/>
              <a:ext cx="3048000" cy="923330"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            {
              for $status in $project/*:component/*:status
              return
                <a:p>
                  <a:pPr indent="-285750" marL="285750">
                    <a:buFont charset="0" pitchFamily="34" typeface="Arial"/>
                    <a:buChar char="•"/>
                  </a:pPr>
                  <a:r>
                    <a:rPr dirty="0" lang="en-US" smtClean="0" sz="1100"/>
                    <a:t>{fn:concat(fn:concat(fn:concat('(',fn:data($status/@*:classification)),')'), $status/text())}</a:t>
                  </a:r>
                </a:p>
            }
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="40" name="funding-type-label"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="4572000" y="6172200"/>
              <a:ext cx="1676400" cy="383977"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr b="1" dirty="0" lang="en-US" smtClean="0"/>
                <a:t>FUNDING TYPE: </a:t>
              </a:r>
              <a:endParaRPr b="1" dirty="0" lang="en-US"/>
            </a:p>
          </p:txBody>
        </p:sp>
        <p:sp>
          <p:nvSpPr>
            <p:cNvPr id="41" name="funding-type"/>
            <p:cNvSpPr txBox="1"/>
            <p:nvPr/>
          </p:nvSpPr>
          <p:spPr>
            <a:xfrm>
              <a:off x="6248400" y="6187276"/>
              <a:ext cx="2628900" cy="491581"/>
            </a:xfrm>
            <a:prstGeom prst="rect">
              <a:avLst/>
            </a:prstGeom>
            <a:noFill/>
          </p:spPr>
          <p:txBody>
            <a:bodyPr rtlCol="0" wrap="square">
              <a:spAutoFit/>
            </a:bodyPr>
            <a:lstStyle/>
            <a:p>
              <a:r>
                <a:rPr dirty="0" lang="en-US" smtClean="0"/>
                <a:t>{('('||fn:data($project/*:component/*:funding/@*:classification)||')' || ' '|| $project/*:component/*:funding/*:type/text() || ': ' || $project/*:component/*:funding/*:fiscal-year/text() || ' $' || $project/*:component/*:funding/*:status/text())}</a:t>
              </a:r>
              <a:endParaRPr dirty="0" lang="en-US"/>
            </a:p>
          </p:txBody>
        </p:sp>
      </p:spTree>
      <p:extLst>
        <p:ext uri="{{BB962C8B-B14F-4D97-AF65-F5344CB8AC3E}}">
          <p14:creationId val="3520663452" xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main"/>
        </p:ext>
      </p:extLst>
    </p:cSld>
    <p:clrMapOvr>
      <a:masterClrMapping/>
    </p:clrMapOvr>
    <p:timing>
      <p:tnLst>
        <p:par>
          <p:cTn dur="indefinite" id="1" nodeType="tmRoot" restart="never"/>
        </p:par>
      </p:tnLst>
    </p:timing>
  </p:sld>

  (:xdmp:document-insert("/template.pptx/ppt/slides/slide2.xml", $slide, (), "presentationML"):)
return document { $slide }
