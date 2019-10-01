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
        <property name="assignments" class="AttributeAssignments">
          <property name="AttachmentName" class="AttributeAssignment">
            <property name="attributeValue" class="String">abc.txt</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class" id="0">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
          <property name="Body" class="AttributeAssignment">
            <property name="attributeValue" class="String">&lt;body&gt;Hi $FirstName$,&lt;br/&gt;
How are you?
&lt;/body&gt;</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.TextAttributeType</property>
          </property>
          <property name="Recipient" class="AttributeAssignment">
            <property name="attributeValue" class="String">david.wright@kofax.com</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" idref="0"/>
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
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices</property>
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
              <property name="name" class="String">ews.UserName</property>
            </property>
          </property>
          <property name="targetSystem" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">MSExchange</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Password</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="5"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Open EWS Message</property>
        <property name="stepAction" class="OpenVariable">
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews_SOAP.Request</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-send-email-messages-by-using-ews-in-exchange
https://docs.microsoft.com/en-us/previous-versions/office/developer/exchange-server-2010/aa563009(v=exchg.140)</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Group" id="7">
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
        <blockBeginStep class="BlockBeginStep" id="8"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="9">
            <property name="name" class="String">Open Request</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews_SOAP.Request</property>
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
            <property name="enabled" idref="2"/>
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
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="12"/>
        <edges class="ArrayList">
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
            <from idref="11"/>
            <to idref="12"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="13">
        <property name="name" class="String">Set Tag</property>
        <property name="stepAction" class="SetTagStepAction" serializationversion="0">
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ews_SOAP.Request_SendAndSaveEmail</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.m:dosomething</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="14">
        <property name="name" class="String">Sender</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.Sender</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:sender.*.t:emailaddress</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="15">
        <property name="name" class="String">To</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.Recipient</property>
            </property>
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
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="16">
        <property name="name" class="String">Subject</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.Subject</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:subject</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="17">
        <property name="name" class="String">Body</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Email.Body</property>
                </property>
              </element>
              <element class="AmpersandEncode"/>
              <element class="EvaluateExpression" serializationversion="0">
                <property name="expression" class="String">replaceText(INPUT,"$FirstName$","Tom")</property>
              </element>
              <element class="ReplaceText">
                <property name="textToReplace" class="String">&amp;rsquo;</property>
                <property name="replacementText" class="String">&amp;#8217;</property>
              </element>
              <element class="ReplaceText">
                <property name="textToReplace" class="String">&amp;bull;</property>
                <property name="replacementText" class="String">•</property>
              </element>
              <element class="ReplaceText">
                <property name="textToReplace" class="String">&amp;copy;</property>
                <property name="replacementText" class="String">©</property>
              </element>
            </property>
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
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="18"/>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" class="String">Set Attribute BodyType</property>
        <property name="stepAction" class="SetAttribute">
          <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">BodyType</property>
          </property>
          <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.BodyType</property>
            </property>
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
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="20">
        <property name="name" class="String">CC?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.CC!=""</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
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
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" class="String" id="22">Insert Content</property>
        <property name="stepAction" class="InsertContent" serializationversion="0">
          <property name="content" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">          &lt;t:CcRecipients&gt;
            &lt;t:Mailbox&gt;
              &lt;t:EmailAddress&gt;****CC*****&lt;/t:EmailAddress&gt;
            &lt;/t:Mailbox&gt;
          &lt;/t:CcRecipients&gt;</property>
          </property>
          <property name="tagInsertionMode" class="LastChildTagInsertionMode2"/>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:message</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="23">
        <property name="name" class="String" id="24">Set Content</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.CC</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:bccrecipients.*.t:emailaddress</property>
            </property>
          </object>
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:ccrecipients.*.t:emailaddress</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="25"/>
      <object class="Transition" serializationversion="3" id="26">
        <property name="name" class="String">BCC?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.BCC!=""</property>
          </property>
        </property>
        <property name="elementFinders" idref="5"/>
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
          <element class="String" id="27">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="28">
        <property name="name" idref="22"/>
        <property name="stepAction" class="InsertContent" serializationversion="0">
          <property name="content" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">          &lt;t:BccRecipients&gt;
            &lt;t:Mailbox&gt;
              &lt;t:EmailAddress&gt;****BCC*****&lt;/t:EmailAddress&gt;
            &lt;/t:Mailbox&gt;
          &lt;/t:BccRecipients&gt;</property>
          </property>
          <property name="tagInsertionMode" class="LastChildTagInsertionMode2"/>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:message</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="29">
        <property name="name" idref="24"/>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.BCC</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:bccrecipients.*.t:emailaddress</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="30"/>
      <object class="Transition" serializationversion="3" id="31">
        <property name="name" class="String">Attachment?</property>
        <property name="stepAction" class="TestValue" serializationversion="0">
          <property name="condition" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.AttachmentName!=""</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment" class="String">https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/how-to-add-attachments-by-using-ews-in-exchange</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="32">
        <property name="name" idref="22"/>
        <property name="stepAction" class="InsertContent" serializationversion="0">
          <property name="content" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
            <property name="value" class="String">          &lt;t:Attachments&gt;
            &lt;t:FileAttachment&gt;
              &lt;t:Name&gt;***FILENAME*****&lt;/t:Name&gt;
              &lt;t:IsInline&gt;false&lt;/t:IsInline&gt;
              &lt;t:IsContactPhoto&gt;false&lt;/t:IsContactPhoto&gt;
              &lt;t:Content&gt;*****BASE64 CONTENT*******&lt;/t:Content&gt;
            &lt;/t:FileAttachment&gt;
          &lt;/t:Attachments&gt;
</property>
          </property>
          <property name="tagInsertionMode" class="AfterInputTagInsertionMode2"/>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:body</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Attachment needs to be before Recipient!</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="33">
        <property name="name" class="String">Set Name</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Email.AttachmentName</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:name</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="27"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="34">
        <property name="name" class="String">Convert Text Attachement to Binary</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">this is the content of the attachment</property>
              </element>
              <element class="ConvertTextToBinary"/>
            </property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Email.Attachment</property>
          </property>
        </property>
        <property name="elementFinders" idref="5"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="27"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="35">
        <property name="name" class="String">Set  Attachment</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="GetVariable" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Email.Attachment</property>
                </property>
              </element>
              <element class="Base64Encode"/>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:content</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="36">
        <property name="name" class="String">EWS - Send Email</property>
        <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
          <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
            <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.Server</property>
              </property>
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
                  <property name="name" class="String">ews.UserName</property>
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
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="37">
        <property name="name" class="String">View as XML</property>
        <property name="stepAction" class="ViewAsXML"/>
        <property name="elementFinders" class="ElementFinders" id="38"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Try" id="39"/>
      <object class="Transition" serializationversion="3" id="40">
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
          <element class="String" id="41">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="42">
        <property name="name" class="String">success log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.Recipient + ";success"</property>
          </property>
        </property>
        <property name="elementFinders" idref="38"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="41"/>
        </property>
      </object>
      <object class="End" id="43"/>
      <object class="Transition" serializationversion="3" id="44">
        <property name="name" class="String">fail log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">Email.Recipient + ";fail"</property>
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
      <object class="End" id="45"/>
      <object class="Transition" serializationversion="3" id="46">
        <property name="name" class="String">Set Text Content</property>
        <property name="stepAction" class="SetContentStepAction" serializationversion="0">
          <property name="setContentMode" class="SetExistingTag"/>
          <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
            <property name="dataConverters" class="DataConverters">
              <element class="AddText">
                <property name="text" class="String">This is the file attachment</property>
              </element>
              <element class="ConvertTextToBinary"/>
              <element class="Base64Encode"/>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:content</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="6"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="13"/>
      </object>
      <object class="TransitionEdge">
        <from idref="13"/>
        <to idref="14"/>
      </object>
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
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="20"/>
      </object>
      <object class="TransitionEdge">
        <from idref="20"/>
        <to idref="21"/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="25"/>
        <to idref="30"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="28"/>
      </object>
      <object class="TransitionEdge">
        <from idref="28"/>
        <to idref="29"/>
      </object>
      <object class="TransitionEdge">
        <from idref="29"/>
        <to idref="30"/>
      </object>
      <object class="TransitionEdge">
        <from idref="30"/>
        <to idref="31"/>
      </object>
      <object class="TransitionEdge">
        <from idref="30"/>
        <to idref="46"/>
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
        <to idref="39"/>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="40"/>
      </object>
      <object class="TransitionEdge">
        <from idref="39"/>
        <to idref="44"/>
      </object>
      <object class="TransitionEdge">
        <from idref="40"/>
        <to idref="42"/>
      </object>
      <object class="TransitionEdge">
        <from idref="42"/>
        <to idref="43"/>
      </object>
      <object class="TransitionEdge">
        <from idref="44"/>
        <to idref="45"/>
      </object>
      <object class="TransitionEdge">
        <from idref="46"/>
        <to idref="36"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
