<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password'); section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">

        <h1>Please enter an unused Backup Code</h1>

        <div id="kc-form">
            <div id="kc-form-wrapper">
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}"
                      method="post">
                    <div class="${properties.kcFormGroupClass!} no-bottom-margin">
                        <hr/>
                        <label for="backupCode" class="${properties.kcLabelClass!}">${msg("backupCode")}</label>
                        <input tabindex="2" id="backupCode" class="${properties.kcInputClass!}" name="backupCode"
                               type="password" autocomplete="on"
                               aria-invalid="<#if messagesPerField.existsError('backupCode')>true</#if>"
                        />
                        <#if messagesPerField.existsError('backupCode')>
                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('backupCode'))?no_esc}
                            </span>
                        </#if>
                    </div>

                    <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                        <div id="kc-form-options">
                        </div>
<#--                        <div class="${properties.kcFormOptionsWrapperClass!}">-->
<#--                            <#if realm.resetPasswordAllowed>-->
<#--                                <span><a tabindex="5"-->
<#--                                         href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>-->
<#--                            </#if>-->
<#--                        </div>-->
                    </div>

                    <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                        <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                    </div>
                </form>
            </div>
        </div>
    </#if>

</@layout.registrationLayout>
