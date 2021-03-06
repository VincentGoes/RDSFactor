<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="../Site.xsl"?>
<?xml-stylesheet type="text/css" href="../RenderFail.css"?>

<% @Page Language="C#" Debug="true" ResponseEncoding="utf-8" ContentType="text/xml"  Inherits="SMSToken" CodeFile="tokenform.aspx.cs" %>

<% @Import Namespace="System" %>
<% @Import Namespace="System.IO" %>
<% @Import Namespace="System.Web.Helpers"  %>
<% @Import Namespace="System.Security" %>
<% @Import Namespace="Microsoft.TerminalServices.Publishing.Portal.FormAuthentication" %>
<% @Import Namespace="Microsoft.TerminalServices.Publishing.Portal" %>

<RDWAPage 
    helpurl="http://go.microsoft.com/fwlink/?LinkId=141038" 
    workspacename="<%=SecurityElement.Escape(L_CompanyName_Text)%>"
    baseurl="<%=SecurityElement.Escape(baseUrl.AbsoluteUri)%>"
    >

  <HTMLMainContent>
    <form id="FrmLogin" runat="server">
      <table width="350" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20">&#160;</td>
        </tr>

        <tr>
          <td>
            <table width="350" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="180" align="right"><%=L_SmsToken_Text%></td>
                <td width="7"></td>
                <td align="right">
                  <asp:TextBox ID="SmsToken" class="textInputField" runat="server" size="25" autocomplete="off"></asp:TextBox>
                </td>
              </tr>
           </table>
         </td>
       </tr>

       <tr>
         <td height="7"></td>
       </tr>
       
        <tr>
          <td height="20">
            <asp:Label ID="deliveryLabel" runat="server" Text="Label" Visible="False"></asp:Label>
          </td>
        </tr>
        <tr id="trButtons" >
          <td align="right">
            <asp:Label ID="strDebug" runat="server" Visible="False"></asp:Label>
            <asp:Button ID="btnSignIn" runat="server"  class="formButton" OnClick="btnSignIn_Click"   />
            <asp:Button ID="btnCancel" runat="server" class="formButton" OnClick="btnCancel_Click" />  
          </td>
        </tr>

        <tr>
          <td height="30"></td>
        </tr>

      </table>
    </form>

  </HTMLMainContent>
</RDWAPage>
