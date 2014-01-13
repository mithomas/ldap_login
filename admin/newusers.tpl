{literal}
<style>
label
{
    display: block;
    width: 250px;
    float: left;
}
</style>
{/literal}

<div class="titrePage">
	<h2>{'Ldap_Login PlugIn'|@translate}</h2>
</div>

<form method="post" action="{$TESTPLUGIN_F_ACTION}" class="general">

<fieldset>
	<legend>{'Ldap_Login Configuration'|@translate}</legend>
	
    <p>
    {'Do you allow new piwigo users to be created when users authenticate succesfully on the ldap ?'|@translate}
	{if $ALLOW_NEWUSERS}
		<input type="checkbox" id="allow_newusers" name="ALLOW_NEWUSERS" value="{$ALLOW_NEWUSERS}" checked />
	{else}
		<input type="checkbox" id="allow_newusers" name="ALLOW_NEWUSERS" value="{$ALLOW_NEWUSERS}" />
	{/if}
    </p>

    <p>
    {'Do you want admins to be advertised by mail in case of new users creation upon ldap login ?'|@translate}
	{if $ADVERTISE_ADMINS}
		<input type="checkbox" id="advertise_admin_new_ldapuser" name="ADVERTISE_ADMINS" value="{$ADVERTISE_ADMINS}" checked />
	{else}
		<input type="checkbox" id="advertise_admin_new_ldapuser" name="ADVERTISE_ADMINS" value="{$ADVERTISE_ADMINS}" />
	{/if}
    </p>
    
    <p>
    {'Do you want to send mail to the new users, like casual piwigo users receive ?'|@translate}
	{if $SEND_CASUAL_MAIL}
		<input type="checkbox" id="send_password_by_mail_ldap" name="SEND_CASUAL_MAIL" value="{$SEND_CASUAL_MAIL}" checked />
	{else}
		<input type="checkbox" id="send_password_by_mail_ldap" name="SEND_CASUAL_MAIL" value="{$SEND_CASUAL_MAIL}" />
	{/if}
    </p>
    
</fieldset>
 
<p>
<input type="submit" value="{'Save'|@translate}" name="save" />
</p>
</form>