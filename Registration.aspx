<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentRegistrationAssignment.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <table>
            <tr>
                
                 <td> <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label> </td>
                 <td>  <asp:TextBox ID="txtName" runat="server"></asp:TextBox> </td>
                 <td> <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name is required" ></asp:RequiredFieldValidator></td>
                 
            </tr>

            <tr>
                <td> <asp:Label ID="lblDateOfBirth" Text="DateOfBirth" runat="server" ></asp:Label></td>
                <td> <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>  </td>
                <td> <asp:RequiredFieldValidator ID="rfvDateOfBirth"  runat="server" ControlToValidate="txtDateOfBirth" Display="Dynamic"  ErrorMessage="DateOfBirth is required" ></asp:RequiredFieldValidator></td>
                <td> <asp:RegularExpressionValidator  ID="revDateOfBirth"  ControlToValidate="txtDateOfBirth" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$" runat="server" ErrorMessage="Enter Date in mm/dd/yyyy format"></asp:RegularExpressionValidator> </td>
                </tr>

            <tr>
                <td>  <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label> </td>
                <td>  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email is required" ></asp:RequiredFieldValidator></td>
                <td> <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail"  ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" ErrorMessage="Enter correct email format "></asp:RegularExpressionValidator> </td>
                 
            </tr>


            <tr>

                <td> <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label> </td>
                <td> <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="rfvPassword" ControlToValidate="txtPassword"  ErrorMessage="Password is required" runat="server"></asp:RequiredFieldValidator> </td>
                <td> <asp:regularexpressionvalidator ID="revPassword" ControlToValidate="txtPassword" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}$" ErrorMessage="Password must have minimum 8 charachters and an upper case and a lowercase and digits" runat="server"></asp:regularexpressionvalidator></td>
                 </tr>
            <tr>
                <td> <asp:Label ID="lblConfirmPassword" runat="server" Text="ConfirmPassword" ></asp:Label></td>
                <td> <asp:TextBox ID="txtConfirmPassword" runat="server"  TextMode="Password"> ></asp:TextBox></td>
                <td> <asp:RequiredFieldValidator ID="rfvConfirmPassword" ControlToValidate="txtConfirmPassword"  runat="server" ErrorMessage="Confirm Password id required"></asp:RequiredFieldValidator>  </td>
                <td> <asp:CompareValidator ID="cvConfirmPassword" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"  Operator="Equal"  ErrorMessage="Password doesn't match with Confirm Password" runat="server"  ></asp:CompareValidator> </td>
            </tr>
            <tr>
                <td colspan="2" style=" text-align:center">
                    <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            
        </table>

    </form>
</body>
</html>
