<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.2.0.2</version>
      <version>10.5.0.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="EWS"/>
      <type name="EWSMessage"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="ews" type-name="EWS"/>
      <typed-variable name="ewsMessage" type-name="EWSMessage"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables>
      <variable name="ewsMessage"/>
    </return-variables>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">EWS</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="Uri" class="AttributeAssignment">
            <property name="attributeValue" class="String">https://outlook.office365.com/EWS/Exchange.asmx</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="0">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="User" class="AttributeAssignment">
            <property name="attributeValue" class="String">username@domain.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">folderName</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="1">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">Inbox</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="2">ewsMessage</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">EWSMessage</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">requestFolder</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference" id="3">
          <property name="simpleTypeId" class="Integer">151</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:m="http://schemas.microsoft.com/exchange/services/2006/messages" xmlns:t="http://schemas.microsoft.com/exchange/services/2006/types" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"&gt;&#13;
  &lt;soap:Header&gt;&#13;
    &lt;t:RequestServerVersion Version="Exchange2013"/&gt;&#13;
  &lt;/soap:Header&gt;&#13;
  &lt;soap:Body&gt;&#13;
    &lt;m:FindItem Traversal="Shallow"&gt;&#13;
      &lt;m:ItemShape&gt;&#13;
        &lt;t:BaseShape&gt;IdOnly&lt;/t:BaseShape&gt;&#13;
        &lt;t:AdditionalProperties&gt;&#13;
          &lt;t:FieldURI FieldURI="item:Subject"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:DisplayTo"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:ItemClass"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:Size"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:HasAttachments"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:DateTimeCreated"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:DateTimeReceived"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:DateTimeSent"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:LastModifiedTime"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:LastModifiedName"/&gt;&#13;
          &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="21" PropertyType="Integer"/&gt;&#13;
          &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="11" PropertyType="String"/&gt;&#13;
          &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="6" PropertyType="String"/&gt;&#13;
          &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Meeting" PropertyId="3" PropertyType="Binary"/&gt;&#13;
          &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Meeting" PropertyId="35" PropertyType="Binary"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:IsAssociated"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:Sensitivity"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:DisplayCc"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:Categories"/&gt;&#13;
          &lt;t:FieldURI FieldURI="item:Culture"/&gt;&#13;
        &lt;/t:AdditionalProperties&gt;&#13;
      &lt;/m:ItemShape&gt;&#13;
      &lt;m:IndexedPageItemView MaxEntriesReturned="50" Offset="0" BasePoint="Beginning"/&gt;&#13;
      &lt;m:ParentFolderIds/&gt;&#13;
    &lt;/m:FindItem&gt;&#13;
  &lt;/soap:Body&gt;&#13;
&lt;/soap:Envelope&gt;</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.XML2AttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="4">tmp</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="1"/>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="5">folderId</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" idref="3"/>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="6">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="6"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="7">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="6"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="8"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="9">
        <property name="name" class="String">Find Folders with Items</property>
        <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
          <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
            <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Uri</property>
              </property>
            </property>
            <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">FindFolder</property>
            </property>
            <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.StringBasedXMLProvider">
              <property name="xML" class="String">&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xmlns:m="http://schemas.microsoft.com/exchange/services/2006/messages"
               xmlns:t="http://schemas.microsoft.com/exchange/services/2006/types"
               xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"&gt;
  &lt;soap:Header&gt;
    &lt;t:RequestServerVersion Version="Exchange2010" /&gt;
  &lt;/soap:Header&gt;
  &lt;soap:Body&gt;
    &lt;m:FindFolder Traversal="Deep"&gt;
      &lt;m:FolderShape&gt;
        &lt;t:BaseShape&gt;IdOnly&lt;/t:BaseShape&gt;
        &lt;t:AdditionalProperties&gt;
          &lt;t:FieldURI FieldURI="folder:DisplayName" /&gt;
        &lt;/t:AdditionalProperties&gt;
      &lt;/m:FolderShape&gt;
      &lt;m:IndexedPageFolderView MaxEntriesReturned="1000" Offset="0" BasePoint="Beginning" /&gt;
      &lt;m:Restriction&gt;
        &lt;t:IsGreaterThan&gt;
          &lt;t:FieldURI FieldURI="folder:TotalCount" /&gt;
          &lt;t:FieldURIOrConstant&gt;
            &lt;t:Constant Value="0" /&gt;
          &lt;/t:FieldURIOrConstant&gt;
        &lt;/t:IsGreaterThan&gt;
      &lt;/m:Restriction&gt;
      &lt;m:ParentFolderIds&gt;
        &lt;t:DistinguishedFolderId Id="root" /&gt;
      &lt;/m:ParentFolderIds&gt;
    &lt;/m:FindFolder&gt;
  &lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;
</property>
            </property>
            <property name="sOAPVersion" class="String">SOAP 1.2</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
            <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
              <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.User</property>
                </property>
              </property>
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Password</property>
                </property>
              </property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">credentialsProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="10">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String" id="12">View as XML</property>
        <property name="stepAction" class="ViewAsXML"/>
        <property name="elementFinders" class="ElementFinders" id="13"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">For Each Folder</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">t:Folder</property>
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String" id="15">folder</property>
          </property>
          <property name="keepExistingNamedTags" class="Boolean">false</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:folders</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="16">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Extract XML</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="domToTextConverter" class="kapow.robot.plugin.common.support.vtopia.converter.XMLDOMToTextConverter"/>
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="5"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" idref="15"/>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:folderid</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="16"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="18">
        <property name="name" class="String">Extract Folder Name</property>
        <property name="stepAction" class="Extract" serializationversion="1">
          <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" idref="4"/>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="tagRelation" class="InTagRelation" serializationversion="1">
              <property name="tagName" class="ElementName">
                <property name="name" idref="15"/>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:displayname</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="16"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Right Folder?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">tmp == folderName</property>
          </property>
        </property>
        <property name="elementFinders" idref="13"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String">reportingViaAPI</element>
            <element class="String">reportingViaLog</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="16"/>
        </property>
      </object>
      <object class="Group" id="20">
        <name class="String">Modify Request and Find Items in Folder</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="21"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="22">
            <property name="name" class="String">Open Request</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">requestFolder</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="23">
            <property name="name" class="String">Insert FolderId</property>
            <property name="stepAction" class="InsertContent" serializationversion="0">
              <property name="content" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">folderId</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.m:parentfolderids</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="24">
            <property name="name" class="String">Get Items from Folder</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Uri</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">FindFolder</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">requestFolder</property>
                  </property>
                </property>
                <property name="sOAPVersion" class="String">SOAP 1.2</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                  <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.User</property>
                    </property>
                  </property>
                  <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Password</property>
                    </property>
                  </property>
                </property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">credentialsProvider</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="25">
            <property name="name" idref="12"/>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="26"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
          </object>
          <object class="TransitionEdge">
            <from idref="22"/>
            <to idref="23"/>
          </object>
          <object class="TransitionEdge">
            <from idref="23"/>
            <to idref="24"/>
          </object>
          <object class="TransitionEdge">
            <from idref="24"/>
            <to idref="25"/>
          </object>
          <object class="TransitionEdge">
            <from idref="25"/>
            <to idref="26"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="27">
        <property name="name" class="String">For Each Message</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">t:message</property>
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String">message</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:items</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="10"/>
        </property>
      </object>
      <object class="Group" id="28">
        <name class="String">Extract Message Data</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="29"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="30">
            <property name="name" class="String">Extract Item Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ewsMessage.ItemId</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">message</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="31">
            <property name="name" class="String">Extract Subject</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ewsMessage.Subject</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">message</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:subject</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="32">
            <property name="name" class="String">Extract Date Time Sent</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractDate">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                      <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                        <property name="value" class="String">yyyy-MM-dd</property>
                      </property>
                    </object>
                  </property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ewsMessage.DateTimeSent</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">message</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:datetimesent</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="33">
            <property name="name" class="String">Extract Display To</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ewsMessage.DisplayTo</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">message</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:displayto</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="34">
            <property name="name" class="String">Extract Display Cc</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ewsMessage.DisplayCc</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">message</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:displaycc</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="7"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="35"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="29"/>
            <to idref="30"/>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="31"/>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="32"/>
          </object>
          <object class="TransitionEdge">
            <from idref="32"/>
            <to idref="33"/>
          </object>
          <object class="TransitionEdge">
            <from idref="33"/>
            <to idref="34"/>
          </object>
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="35"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="36">
        <property name="name" class="String">Return Value</property>
        <property name="stepAction" class="ReturnVariable" serializationversion="1">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="2"/>
          </property>
        </property>
        <property name="elementFinders" idref="13"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="7"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="37">
        <property name="name" class="String">Get Message Details</property>
        <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
          <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
            <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Uri</property>
              </property>
            </property>
            <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">GetItems</property>
            </property>
            <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.StringBasedXMLProvider">
              <property name="xML" class="String">  &lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:m="http://schemas.microsoft.com/exchange/services/2006/messages" xmlns:t="http://schemas.microsoft.com/exchange/services/2006/types" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"&gt;
    &lt;soap:Header&gt;
      &lt;t:RequestServerVersion Version="Exchange2013" /&gt;
    &lt;/soap:Header&gt;
    &lt;soap:Body&gt;
      &lt;m:GetItem&gt;
        &lt;m:ItemShape&gt;
          &lt;t:BaseShape&gt;AllProperties&lt;/t:BaseShape&gt;
          &lt;t:AdditionalProperties&gt;
            &lt;t:ExtendedFieldURI PropertyTag="4091" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="4340" PropertyType="Boolean" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Meeting" PropertyId="35" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Meeting" PropertyId="3" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="11" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="21" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertySetId="11000e07-b51b-40d6-af21-caa85edab1d0" PropertyId="6" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12314" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12316" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12315" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12317" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12312" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12318" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12319" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="4095" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="101" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16432" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="3103" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="3593" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="3591" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="3607" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="3590" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="112" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="12307" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="113" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16128" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Common" PropertyId="34130" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Common" PropertyId="34132" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Common" PropertyId="31" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33347" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="258" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33287" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33330" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33329" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33315" PropertyType="Boolean" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33302" PropertyType="Binary" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33298" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33295" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33293" PropertyType="SystemTime" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Appointment" PropertyId="33303" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="InternetHeaders" PropertyName="From" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="PublicStrings" PropertyName="urn:schemas:httpmail:from" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="PublicStrings" PropertyName="urn:schemas:httpmail:fromemail" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16409" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Common" PropertyId="3098" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16410" PropertyType="Integer" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="66" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16433" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="32001" PropertyType="Boolean" /&gt;
            &lt;t:ExtendedFieldURI DistinguishedPropertySetId="Meeting" PropertyId="10" PropertyType="Boolean" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16376" PropertyType="String" /&gt;
            &lt;t:ExtendedFieldURI PropertyTag="16440" PropertyType="String" /&gt;
          &lt;/t:AdditionalProperties&gt;
        &lt;/m:ItemShape&gt;
        &lt;m:ItemIds&gt;
          &lt;t:ItemId Id="AAMkADY3YTAxMjVmLTM3YTQtNGMxMi1hYmU0LTdmNGUxNGVlMzQwYwBGAAAAAADXZpvAaNDKTKykRbfVBC33BwAmGaaSbyrZQ7rOV27GzZcMAAAAAAEJAAAmGaaSbyrZQ7rOV27GzZcMAAIDoB7IAAA=" /&gt;
        &lt;/m:ItemIds&gt;
      &lt;/m:GetItem&gt;
    &lt;/soap:Body&gt;
  &lt;/soap:Envelope&gt;</property>
            </property>
            <property name="sOAPVersion" class="String">SOAP 1.2</property>
          </property>
          <property name="sOAPResponseConsumer" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLConsumer" serializationversion="1">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">result</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
            <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
              <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.User</property>
                </property>
              </property>
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Password</property>
                </property>
              </property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">credentialsProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="6"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="38"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="17"/>
      </object>
      <object class="TransitionEdge">
        <from idref="17"/>
        <to idref="18"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="27"/>
      </object>
      <object class="TransitionEdge">
        <from idref="27"/>
        <to idref="28"/>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="36"/>
      </object>
      <object class="TransitionEdge">
        <from idref="36"/>
        <to idref="37"/>
      </object>
      <object class="TransitionEdge">
        <from idref="37"/>
        <to idref="38"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
