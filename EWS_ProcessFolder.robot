<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.4.0.0</version>
      <version>10.5.0.0</version>
      <version>10.6.0.2</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Email"/>
      <type name="ExchangeWebServices"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="Email" type-name="Email"/>
      <typed-variable name="ews" type-name="ExchangeWebServices"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Email</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Email</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="AttachmentName" class="AttributeAssignment">
            <property name="attributeValue" class="String">abc.txt</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="0">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="Sender" class="AttributeAssignment">
            <property name="attributeValue" class="String">david.wright@kofax.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
          <property name="Subject" class="AttributeAssignment">
            <property name="attributeValue" class="String">Email subject</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
          <property name="To" class="AttributeAssignment">
            <property name="attributeValue" class="String">david.wright@kofax.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="Request" class="AttributeAssignment">
            <property name="attributeValue" class="String">&lt;?xml version="1.0" encoding="UTF-8"?&gt;&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:m="http://schemas.microsoft.com/exchange/services/2006/messages" xmlns:t="http://schemas.microsoft.com/exchange/services/2006/types" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"&gt;&#13;
  &lt;soap:Header&gt;&#13;
    &lt;t:RequestServerVersion Version="Exchange2010_SP2"/&gt;&#13;
  &lt;/soap:Header&gt;&#13;
  &lt;soap:Body&gt;&#13;
    &lt;m:CreateItem MessageDisposition="SendAndSaveCopy"&gt;&#13;
      &lt;m:SavedItemFolderId&gt;&#13;
        &lt;t:DistinguishedFolderId Id="sentitems"/&gt;&#13;
      &lt;/m:SavedItemFolderId&gt;&#13;
      &lt;m:Items&gt;&#13;
        &lt;t:Message&gt;&#13;
          &lt;t:Subject&gt;****SUBJECT****&lt;/t:Subject&gt;&#13;
          &lt;t:Body BodyType="HTML"&gt;****BODY****&lt;/t:Body&gt;&#13;
          &lt;t:Sender&gt;&#13;
            &lt;t:Mailbox&gt;&#13;
              &lt;t:EmailAddress&gt;****SENDER*****&lt;/t:EmailAddress&gt;&#13;
            &lt;/t:Mailbox&gt;&#13;
          &lt;/t:Sender&gt;&#13;
          &lt;t:ToRecipients&gt;&#13;
            &lt;t:Mailbox&gt;&#13;
              &lt;t:EmailAddress&gt;****TO*****&lt;/t:EmailAddress&gt;&#13;
            &lt;/t:Mailbox&gt;&#13;
          &lt;/t:ToRecipients&gt;&#13;
        &lt;/t:Message&gt;&#13;
      &lt;/m:Items&gt;&#13;
    &lt;/m:CreateItem&gt;&#13;
  &lt;/soap:Body&gt;&#13;
&lt;/soap:Envelope&gt;</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.XML2AttributeType</property>
          </property>
          <property name="Uri" class="AttributeAssignment">
            <property name="attributeValue" class="String">https://mail2.kofax.com/ews/exchange.asmx</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
          <property name="User" class="AttributeAssignment">
            <property name="attributeValue" class="String">david.wright@kofax.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
          </property>
        </property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String">Lookup Password</property>
        <property name="stepAction" class="LookupPassword">
          <property name="userName" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ews.User</property>
            </property>
          </property>
          <property name="targetSystem" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">MSExchange</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Password</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="5"/>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Use Office 365</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">https://outlook.office365.com/EWS/Exchange.asmx</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Uri</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">Assign Request</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">&gt;&gt;&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
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
&lt;&lt;</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Request</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="8">
        <property name="name" class="String">Find Folders with Items</property>
        <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
          <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
            <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Uri</property>
              </property>
            </property>
            <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">FindItem</property>
            </property>
            <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Request</property>
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
            <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
              <property name="headers" class="BeanList">
                <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                  <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                    <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                      <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                    </property>
                  </property>
                </object>
              </property>
            </property>
            <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ews.StatusCode</property>
            </property>
            <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ews.Headers</property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">responseHeadersAttributeName</element>
              <element class="String">responseStatusCodeAttributeName</element>
              <element class="String">headerProvider</element>
              <element class="String">credentialsProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="9">
        <property name="name" class="String">View as XML</property>
        <property name="stepAction" class="ViewAsXML"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="10"/>
      <object class="Transition" serializationversion="3" id="11">
        <property name="name" class="String">Email Sent?</property>
        <property name="stepAction" class="TestTag" serializationversion="1">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">.*ResponseClass="Success".*</property>
          </property>
          <property name="include" class="Boolean">true</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.m:createitemresponsemessage</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="12">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">success log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.To + ";success"</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="12"/>
        </property>
      </object>
      <object class="End" id="14"/>
      <object class="Transition" serializationversion="3" id="15">
        <property name="name" class="String">fail log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.To + ";fail"</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="16"/>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Use Kofax.com</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">https://mail.kofax.com/ews/exchange.asmx</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Uri</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="18"/>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Find All Items in Inbox</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">&gt;&gt;&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xmlns:m="http://schemas.microsoft.com/exchange/services/2006/messages"
               xmlns:t="http://schemas.microsoft.com/exchange/services/2006/types"
               xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"&gt;
  &lt;soap:Header&gt;
    &lt;t:RequestServerVersion Version="Exchange2010" /&gt;
  &lt;/soap:Header&gt;
  &lt;soap:Body&gt;
    &lt;m:FindItem Traversal="Shallow"&gt;
      &lt;m:ItemShape&gt;
        &lt;t:BaseShape&gt;IdOnly&lt;/t:BaseShape&gt;
        &lt;t:AdditionalProperties&gt;
          &lt;t:FieldURI FieldURI="item:Subject"/&gt;
        &lt;/t:AdditionalProperties&gt;
      &lt;/m:ItemShape&gt;
      &lt;m:IndexedPageItemView MaxEntriesReturned="6" Offset="0" BasePoint="Beginning" /&gt;
      &lt;m:ParentFolderIds&gt;
        &lt;t:DistinguishedFolderId Id="inbox" /&gt;
      &lt;/m:ParentFolderIds&gt;
    &lt;/m:FindItem&gt;
  &lt;/soap:Body&gt;
&lt;/soap:Envelope&gt;
&lt;&lt;</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Request</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="20">
        <property name="name" class="String">Find Folders</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">&gt;&gt;&lt;soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
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
&lt;&lt;</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Request</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="21"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="17"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
      </object>
      <object class="TransitionEdge">
        <from idref="8"/>
        <to idref="9"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="15"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="15"/>
        <to idref="16"/>
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
        <from idref="18"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="8"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
