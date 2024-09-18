<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/Default.master"
    Title="PC Anywhere" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    
    <div class="greyBox" style="margin:2rem 0; padding:1rem;">
        <h1>This was replaced by <a href="https://www.ssw.com.au/ssw/Consulting/Microsoft-Teams.aspx">Microsoft Teams</a></h1>
    </div>
    <hr />
    <p>
        PCAnywhere has remote control, file transfer and networking capabilities. SSW uses
        PCAnywhere primarily for remote control which helps us help our clients. This document
        explains how to use PCAnywhere in a normal situation and steps to connect from behind
        a firewall, with step by step instuctions.</p>
    <p>
        <a href="#addingRemote">ADDING REMOTE CONTROL ITEM</a></p>
    <p>
        <a href="#becomehost">BECOMING A HOST</a></p>
    <p>
        <a href="#firewall">CONNECTING THROUGH FIREWALL</a></p>
    <p>
        <a href="#advantages">ADVANTAGES OVER NETMEETING</a></p>
    <p>
        For more details go to Symantec: <a href="/ssw/Redirect/SymantecSupport3.htm" target="_blank">
            http://www.symantec.com/techsupp/index.html</a></p>
    <table width="100%" cellpadding="0" id="top">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Overview of PCAnywhere</b>
            </td>
        </tr>
    </table>
    <p>
        A remote control connection allows a remote PC to connect to a PC acting as a host
        and use the host PC as though the user were at the host site. The PC that has connected
        to the host now has the ability to access any file or application on the host PC
        or the network. During a &quot;remote control&quot; session with a host you can:
        Transfer files between the host and remote PCs. Synchronize and clone files and
        folders on the host and remote PC. Electronically 'chat' with the host user by typing
        a conversation on the screen. Record the session to a record file for later playback
        and diagnostics.
    </p>
    <p>
        Before you can begin a remote control session you must first create a remote control
        connection item and a host connection item. A connection item is a file containing
        dialing instructions and other settings that the remote PC uses to connect to a
        particular host. The host PC you are calling must have the pcAnywhere host waiting
        for a call.</p>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <a id="addingRemote"></a>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Adding Remote Control Item</b>
            </td>
        </tr>
    </table>
    <p>
        Click on Remote Control and select &quot;Add Remote Control Item&quot;.<br>
        <img src="Images/imgPCARemote.gif" alt="" width="450" height="233" border="1"></p>
    <p>
        If a host name is not entered here you will be given a list of available hosts.<br>
        <img src="Images/imgPCARemoteWIZ1.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        Because this particular connection will be for internal office use, we will be using
        NetBIOS.<br>
        <img src="Images/imgPCARemoteWIZ2.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        If a host name was not entered earlier you can select one from a list of available
        hosts.<br>
        <img src="Images/imgPCAAvailableHosts.gif" alt="Available Hosts" width="450" height="255"
            border="1">
    </p>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <a id="becomehost"></a>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Becoming a Host</b>
            </td>
        </tr>
    </table>
    <p>
        A pcAnywhere host PC can be accessed and remotely controlled by one or more remote
        users. After connecting to a host PC, the remote user can access files, folders,
        and applications as if they were physically working at the host PC.</p>
    <p>
        Click on &quot;Add Be A Host PC Item&quot; which will start the &quot;Be A Host
        PC Wizard&quot;.<br>
        <img src="Images/imgPCAHostgif.gif" alt="" width="450" height="288" border="1"></p>
    <p>
        Select the name of the item as it will appear in main window of PCAnywhere.<br>
        <img src="Images/imgPCAHostWIZ1.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        Select the protocol being used depending on who will be connecting to you.<br>
        <img src="Images/imgPCAHostWIZ2.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        It is recommended that you choose to limit access to the host.<br>
        <img src="Images/imgPCAHostWIZ3.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        <img src="Images/imgPCAHostWIZ4.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        You can right click on a particular Host Item and select properties to choose the
        network settings.<br>
        <img src="Images/imgPCAHostNetworkProperties.gif" alt="" width="450" height="319"
            border="1"></p>
    <p>
        Here we are using Windows authentication, on the Callers tab select &quot;Add User&quot;.<br>
        <img src="Images/imgPCAHostNetworkPropertiesCallersTab.gif" alt="" width="450" height="380"
            border="1"></p>
    <p>
        We are adding a particular group of users that have been predefined.<br>
        <img src="Images/imgCallerNewUserWIZ1.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        These settings are allowing the &quot;SSWDevelopers&quot; within the SSW domain
        to control this host.<br>
        <img src="Images/imgCallerNewUserWIZ2.gif" alt="" width="450" height="317" border="1"></p>
    <p>
        <img src="Images/imgTaskbar.gif" alt="" width="138" height="83" border="0">
        Just double click on the icon to stop being a host.</p>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <a id="firewall"></a>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Information on Connecting through a Firewall</b>
            </td>
        </tr>
    </table>
    <p>
        When a remote PC tries to connect over the Internet to the specified host it won't
        connect if the software that manages the port does not allow the particular ports
        that PCAnywhere requires be used.</p>
    <p>
        PCAnywhere requires that it be able to use ports 5631(TCP) and 5632(UDP), so the
        firewall must allow access to these two ports for a remote PC to be able to see
        the IP of a host from behind a firewall.</p>
    <p>
        <img src="Images/imgPortRanges.gif" alt="" width="341" height="143" border="1"></p>
    <p>
        For more technical information concerning the ability to connect over the Internet
        go to :</p>
    <p>
        <a href="/ssw/Redirect/SymantecSupport1.htm" target="_blank">http://service1.symantec.com/support/pca.nsf/9f19833cbd7241aa85256758005492c7</a></p>
    <p>
        For information on how to change the PCAnywhere ports in the registry go to :
    </p>
    <p>
        <a href="/ssw/Redirect/SymantecSupport2.htm" target="_blank">http://service1.symantec.com/support/pca.nsf/docid/1999110411575512</a></p>
    <p>
        &nbsp;</p>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <a id="advantages"></a>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Advantages over NetMeeting</b>
            </td>
        </tr>
    </table>
    <p>
        We use PCAnywhere because it was made specifically for remote control i.e. a job
        specific utility where as with netmeeting it appears to be an afterthought.</p>
    <p>
        1. Runs quicker than netmeeting</p>
    <p>
        2. Easier to establish connection from behind firewalls.</p>
    <p>
        3. Better visual display from 'Remote Control PC'.<br>
    </p>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#ff0033">
            <td>
                .
            </td>
        </tr>
    </table>
    <table width="100%" cellpadding="0">
        <tr bgcolor="#cccccc">
            <td>
                <b>Acknowledgements</b>
            </td>
        </tr>
    </table>
    <br>
    <a href="/people/alumni/david-klein">David Klein</a></span></p>
</asp:Content>
