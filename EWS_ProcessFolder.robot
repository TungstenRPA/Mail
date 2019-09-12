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
      <type name="ExchangeWebServices_SOAP"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="Email" type-name="Email"/>
      <typed-variable name="ews" type-name="ExchangeWebServices"/>
      <typed-variable name="ews_SOAP" type-name="ExchangeWebServices_SOAP"/>
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
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="User" class="AttributeAssignment">
            <property name="attributeValue" class="String">david.wright@kofax.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews_SOAP</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices_SOAP</property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="0">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="0"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="1">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="0"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="2"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="3">
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
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="4"/>
      <object class="Transition" serializationversion="3" id="5">
        <property name="name" class="String">Use Office 365</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">outlook.office365.com</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Server</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Group" id="6">
        <name class="String">Set EWS Version</name>
        <comment class="String">Make sure that the variable ews.Version is set correctly for your Exchange Server
Exchange2013_SP1
Exchange2013
Exchange2010_SP2    : Kofax
Exchange2010_SP1
Exchange2010
Exchange2007_SP1
Exchange2007
https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/ews-schema-versions-in-exchange?redirectedfrom=MSDN</comment>
        <blockBeginStep class="BlockBeginStep" id="7"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="8">
            <property name="name" class="String">Open Request</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String" id="9">ews_SOAP.Request</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="10">
            <property name="name" class="String">Set EWS Version</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Version</property>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Version</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:requestserverversion</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="11">
            <property name="name" class="String">Check Server URI</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="Expression" serializationversion="1">
                <property name="text" class="String">contains(ews.Server,"https://") ?  ews.Server : "https://"+ews.Server+"/ews/exchange.asmx"</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Server</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="12"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="8"/>
          </object>
          <object class="TransitionEdge">
            <from idref="8"/>
            <to idref="10"/>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="11"/>
          </object>
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="13">
        <name class="String">EWS:Find Inbox</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="14"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="15">
            <property name="name" class="String">FindI Inbox</property>
            <property name="stepAction" class="InsertContent" serializationversion="0">
              <property name="content" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Request_FindInboxOfOwner</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.soap:body</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="16">
            <property name="name" class="String">Set Owner</property>
            <property name="stepAction" class="SetText">
              <property name="text" class="Expression" serializationversion="1">
                <property name="text" class="String">ews.Inbox_Owner=="" ? ews.User : ews.Inbox_Owner</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:emailaddress</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="17">
            <property name="name" class="String">EWS:Read Inbox</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">FindItem</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
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
                  <property name="name" class="String">ews_SOAP.StatusCode</property>
                </property>
                <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Headers</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="18">
            <property name="name" class="String" id="19">View as XML</property>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="20">
            <property name="name" class="String">Extract Inbox Folder Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String" id="21">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Inbox_FolderId</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:parentfolderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="22">
            <property name="name" class="String">Extract Inbox Folder Change Key</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String" id="23">ChangeKey</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:parentfolderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="24"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="15"/>
          </object>
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="17"/>
          </object>
          <object class="TransitionEdge">
            <from idref="17"/>
            <to idref="18"/>
          </object>
          <object class="TransitionEdge">
            <from idref="18"/>
            <to idref="20"/>
          </object>
          <object class="TransitionEdge">
            <from idref="20"/>
            <to idref="22"/>
          </object>
          <object class="TransitionEdge">
            <from idref="22"/>
            <to idref="24"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="25">
        <name class="String">EWS:Find Outbox</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="26"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="27">
            <property name="name" class="String" id="28">Set Current Window</property>
            <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
              <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                  <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                    <property name="id" idref="9"/>
                  </property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders" id="29"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="30">
            <property name="name" class="String" id="31">Set Tag</property>
            <property name="stepAction" class="SetTagStepAction" serializationversion="0">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Request_FindFolderByName</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.m:getfolder</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="32">
            <property name="name" class="String">Set Attribute Value</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Value</property>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Outbox_FolderName</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:constant</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="33">
            <property name="name" class="String">Set Attribute Id</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" idref="21"/>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Inbox_FolderId</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:folderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="34">
            <property name="name" class="String">Set Attribute ChangeKey</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" idref="23"/>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:folderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="35">
            <property name="name" class="String">EWS:Read Inbox</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">FindItem</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
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
                  <property name="name" class="String">ews_SOAP.StatusCode</property>
                </property>
                <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Headers</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="36">
            <property name="name" idref="19"/>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="37">
            <property name="name" class="String">Extract Outbox Folder Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Outbox_FolderId</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:folderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="38">
            <property name="name" class="String">Extract Outbox Folder Change Key</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">ChangeKey</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Outbox_FolderChangeKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:folderid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="39"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="26"/>
            <to idref="27"/>
          </object>
          <object class="TransitionEdge">
            <from idref="27"/>
            <to idref="30"/>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
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
          <object class="TransitionEdge">
            <from idref="35"/>
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
          <object class="TransitionEdge">
            <from idref="38"/>
            <to idref="39"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="40">
        <name class="String">EWS:Read Inbox</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="41"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="42">
            <property name="name" idref="28"/>
            <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
              <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                  <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                    <property name="id" idref="9"/>
                  </property>
                </property>
              </property>
            </property>
            <property name="elementFinders" idref="29"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="43">
            <property name="name" idref="31"/>
            <property name="stepAction" class="SetTagStepAction" serializationversion="0">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Request_FindEmailsInFolder</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.m:findfolder</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="44">
            <property name="name" class="String">Set Content</property>
            <property name="stepAction" class="SetContentStepAction" serializationversion="0">
              <property name="setContentMode" class="SetExistingTag"/>
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.Inbox_Owner</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:emailaddress</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="45">
            <property name="name" class="String">EWS:Read Inbox</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">FindItem</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
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
                  <property name="name" class="String">ews_SOAP.StatusCode</property>
                </property>
                <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Headers</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="46">
            <property name="name" idref="19"/>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="47"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="41"/>
            <to idref="42"/>
          </object>
          <object class="TransitionEdge">
            <from idref="42"/>
            <to idref="43"/>
          </object>
          <object class="TransitionEdge">
            <from idref="43"/>
            <to idref="44"/>
          </object>
          <object class="TransitionEdge">
            <from idref="44"/>
            <to idref="45"/>
          </object>
          <object class="TransitionEdge">
            <from idref="45"/>
            <to idref="46"/>
          </object>
          <object class="TransitionEdge">
            <from idref="46"/>
            <to idref="47"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="48">
        <property name="name" class="String">For Each Item</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">t:message</property>
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
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="49">name</element>
        </property>
      </object>
      <object class="Group" id="50">
        <name class="String">Get basic email data - FAST</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="51"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="52">
            <property name="name" class="String">Extract Subject</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Subject</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="53">
            <property name="name" class="String">Extract Date Time Sent</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractDate">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                      <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                        <property name="value" class="String">yyyy-MM-ddThh:mm:ss</property>
                      </property>
                    </object>
                  </property>
                  <property name="defaultTimeZone" class="sun.util.calendar.ZoneInfo" id="54">
                    <property name="ID" class="java.lang.String">UTC</property>
                  </property>
                  <property name="resultTimeZone" idref="54"/>
                  <property name="specifiedDescription" class="String">Get date (UTC)</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.DateTimeSent</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="55">
            <property name="name" class="String">Extract Sender</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Sender</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="56">
            <property name="name" class="String">Extract Attachment Name</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.AttachmentName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:hasattachments</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="57">
            <property name="name" class="String">Extract Is Read</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.isRead</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:isread</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="58">
            <property name="name" class="String">Extract Item Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.ItemId</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="59">
            <property name="name" class="String">Extract Item Change Key</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">ChangeKey</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.ItemChangeKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="60"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="51"/>
            <to idref="52"/>
          </object>
          <object class="TransitionEdge">
            <from idref="52"/>
            <to idref="53"/>
          </object>
          <object class="TransitionEdge">
            <from idref="53"/>
            <to idref="55"/>
          </object>
          <object class="TransitionEdge">
            <from idref="55"/>
            <to idref="56"/>
          </object>
          <object class="TransitionEdge">
            <from idref="56"/>
            <to idref="57"/>
          </object>
          <object class="TransitionEdge">
            <from idref="57"/>
            <to idref="58"/>
          </object>
          <object class="TransitionEdge">
            <from idref="58"/>
            <to idref="59"/>
          </object>
          <object class="TransitionEdge">
            <from idref="59"/>
            <to idref="60"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="61">
        <property name="name" class="String">BUILD YOUR QUICK FILTER HERE</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" idref="29"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">here you can filter emails using only subject and sender name (no sender email address yet)</property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="49"/>
        </property>
      </object>
      <object class="Group" id="62">
        <name class="String">EWS:Get complete email - SLOW</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="63"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="64">
            <property name="name" idref="28"/>
            <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
              <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                  <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                    <property name="id" idref="9"/>
                  </property>
                </property>
              </property>
            </property>
            <property name="elementFinders" idref="29"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="65">
            <property name="name" idref="31"/>
            <property name="stepAction" class="SetTagStepAction" serializationversion="0">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Request_GetItem</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.soap:Body.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="66">
            <property name="name" class="String">Set Attribute Id</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Id</property>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.ItemId</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="67">
            <property name="name" class="String">Set Attribute ChangeKey</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" idref="23"/>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.ItemChangeKey</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="68">
            <property name="name" class="String">EWS:Get Item</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">GetItem</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
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
                  <property name="name" class="String">ews_SOAP.StatusCode</property>
                </property>
                <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Headers</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
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
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="69">
            <property name="name" idref="19"/>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="70">
            <property name="name" class="String">Extract Body</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Body</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:body</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="71">
            <property name="name" class="String">Extract Sender</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Sender</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:emailaddress</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="72">
            <property name="name" class="String">Extract CC</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.CC</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:ccrecipients.*.t:emailaddress</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="73">
            <property name="name" class="String">Extract To</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.To</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:torecipients.*.t:emailaddress</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="74">
            <property name="name" class="String">Extract Attachment Name</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.AttachmentName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="changedProperties" class="java.util.HashSet">
                <element class="String">reportingViaAPI</element>
                <element class="String">reportingViaLog</element>
              </property>
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="75"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="63"/>
            <to idref="64"/>
          </object>
          <object class="TransitionEdge">
            <from idref="64"/>
            <to idref="65"/>
          </object>
          <object class="TransitionEdge">
            <from idref="65"/>
            <to idref="66"/>
          </object>
          <object class="TransitionEdge">
            <from idref="66"/>
            <to idref="67"/>
          </object>
          <object class="TransitionEdge">
            <from idref="67"/>
            <to idref="68"/>
          </object>
          <object class="TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
          </object>
          <object class="TransitionEdge">
            <from idref="69"/>
            <to idref="70"/>
          </object>
          <object class="TransitionEdge">
            <from idref="70"/>
            <to idref="71"/>
          </object>
          <object class="TransitionEdge">
            <from idref="71"/>
            <to idref="72"/>
          </object>
          <object class="TransitionEdge">
            <from idref="72"/>
            <to idref="73"/>
          </object>
          <object class="TransitionEdge">
            <from idref="73"/>
            <to idref="74"/>
          </object>
          <object class="TransitionEdge">
            <from idref="74"/>
            <to idref="75"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="76">
        <property name="name" class="String">Build your Slow FILTER here</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">here you have all email information, including all recipient &amp; CC email addresses, Body, attachment names.</property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="77"/>
      <object class="End" id="78"/>
      <object class="Try" id="79"/>
      <object class="Transition" serializationversion="3" id="80">
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
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="81">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="82">
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
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="81"/>
        </property>
      </object>
      <object class="End" id="83"/>
      <object class="Transition" serializationversion="3" id="84">
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
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="85"/>
      <object class="Transition" serializationversion="3" id="86">
        <property name="name" class="String">Use Kofax.com</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" idref="29"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="86"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="6"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="40"/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="48"/>
      </object>
      <object class="TransitionEdge">
        <from idref="48"/>
        <to idref="50"/>
      </object>
      <object class="TransitionEdge">
        <from idref="50"/>
        <to idref="61"/>
      </object>
      <object class="TransitionEdge">
        <from idref="61"/>
        <to idref="62"/>
      </object>
      <object class="TransitionEdge">
        <from idref="62"/>
        <to idref="76"/>
      </object>
      <object class="TransitionEdge">
        <from idref="76"/>
        <to idref="77"/>
      </object>
      <object class="TransitionEdge">
        <from idref="77"/>
        <to idref="78"/>
      </object>
      <object class="TransitionEdge">
        <from idref="77"/>
        <to idref="79"/>
      </object>
      <object class="TransitionEdge">
        <from idref="79"/>
        <to idref="80"/>
      </object>
      <object class="TransitionEdge">
        <from idref="79"/>
        <to idref="84"/>
      </object>
      <object class="TransitionEdge">
        <from idref="80"/>
        <to idref="82"/>
      </object>
      <object class="TransitionEdge">
        <from idref="82"/>
        <to idref="83"/>
      </object>
      <object class="TransitionEdge">
        <from idref="84"/>
        <to idref="85"/>
      </object>
      <object class="TransitionEdge">
        <from idref="86"/>
        <to idref="6"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
