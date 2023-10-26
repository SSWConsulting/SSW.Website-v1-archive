<%@ Page Language="C#" AutoEventWireup="false" MasterPageFile="~/Masters/RavenSubpage.master"
    Title="Propagating Changes to Live" %>

<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p>
        <table width="100%" border="0">
            <tr>
                <td>
                    <h2>
                        Propagating Changes to Live Databases with SSW Data Renovator</h2>
                    <p>
                        Keeping your live production database up to date with the latest structural changes
                        is an ongoing problem for developers. The database needs to be taken offline quickly
                        to make structural changes and convert data but this can be tricky when people are
                        relying on the system. The data conversion can also take time as new fields and
                        relationships might have been added.
                    </p>
                    <h2>
                        Different Methods of Updating a Database</h2>
                    <p>
                        The following examples assume that the database is in Microsoft Access format and
                        has the data in a separate database to the forms, reports and code. The client or
                        live production database is named DBDATAv1.mdb and the development team has made
                        changes to the structure of this database, which is now called DBDATAv2.mdb.
                        <p>
                            <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                <tr align="center" valign="center">
                                    <td width="31">
                                        <b>No</b>
                                    </td>
                                    <td width="108">
                                        <b>Method</b>
                                    </td>
                                    <td>
                                        <b>Develop On</b>
                                    </td>
                                    <td>
                                        <b>Additional Development</b>
                                    </td>
                                    <td>
                                        <b>Downtime for Client</b>
                                    </td>
                                    <td>
                                        <b>Comments</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        1.
                                    </td>
                                    <td>
                                        Database Offline(Cannot be used during development)
                                    </td>
                                    <td>
                                        Master copy of Application and Data (DBDATAv
                                    </td>
                                    <td>
                                        None.
                                    </td>
                                    <td>
                                        As long as development takes (days to weeks)
                                    </td>
                                    <td>
                                        Can work for small, quick changes
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        2.
                                    </td>
                                    <td>
                                        Database Online Manual Updates
                                    </td>
                                    <td>
                                        Master copy of Application Copy of production database
                                    </td>
                                    <td>
                                        None. Keep a record of structural changes
                                    </td>
                                    <td>
                                        As long as it takes to make changes manually (a few hours)
                                    </td>
                                    <td>
                                        Works for small changes. Chance that some changes will be missed on larger jobs
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        3.
                                    </td>
                                    <td>
                                        Database Online Write Queries to move data from development to production
                                    </td>
                                    <td>
                                        Master copy of Application Copy of production database
                                    </td>
                                    <td>
                                        Writing and testing update Queries at the end of development
                                    </td>
                                    <td>
                                        As long as it takes to run the queries and convert data (a few hours)
                                    </td>
                                    <td>
                                        Allocate lots of time at the end of development to write and test the update queries.
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        4.
                                    </td>
                                    <td>
                                        Client Online Write DAO Code to change structure of production database
                                    </td>
                                    <td>
                                        Master copy of Application Copy of production database
                                    </td>
                                    <td>
                                        Code and interface to store and make the changes to live data
                                    </td>
                                    <td>
                                        As long as it takes to run the code (a few minutes)
                                    </td>
                                    <td>
                                        Good if the database has a large amount of data and few structural changes
                                    </td>
                                </tr>
                            </table>
                            <h2>
                                Issues of Converting Live Data</h2>
                            <p>
                                Assuming you have ruled out the first option Database Offline for anything other
                                than small changes, the following issues need to be considered:
                            </p>
                            <p>
                                Tracking Structural Changes
                            </p>
                            <p>
                                As development is being done on a copy of the live database that will be synchronized
                                with the live database at the end of development, all changes to the schema must
                                be tracked. Tracking changes is especially important when using methods 2, 3 and
                                4.
                            </p>
                            <p>
                                <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                    <tr>
                                        <td valign="center">
                                            SSW Data Renovator compares two databases and reports any differences in the structure.
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                Making Structural Changes
                            </p>
                            <p>
                                If the old database will have its structure changed instead of transferring all
                                data into the new database, structural changes need to be made either manually or
                                through code. Methods 2 and 4 work this way.
                            </p>
                            <p>
                                <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                    <tr>
                                        <td>
                                            Another SSW Product SSW Data PRO! can be used to automatically make structural changes
                                            to databases on-site
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                Removing all test data from the new structure
                            </p>
                            <p>
                                Using Methods 2 and 3, the developer makes a copy of the master data database that
                                has the new structure, clears all test data out of this database then transfers
                                the data from the live database into the development database. Clearing test data
                                can be a painstaking task if the database is large and referential integrity is
                                enforced, as the data must be deleted from tables in the correct order from the
                                child tables upwards.
                            </p>
                            <p>
                                <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                    <tr>
                                        <td>
                                            SSW Data Renovator can remove all data from a database in the correct order according
                                            to the relationships defined in the database.
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                Converting the Data from the old data structure to the new
                            </p>
                            <p>
                                Once development has finished, either the production database must have its structure
                                changed to match the changes made in development or the data must be transferred
                                to an empty copy of the development database. This can be complicated when new fields
                                have been added which cannot be empty, new relationships have been defined and field
                                properties have been changed.
                            </p>
                            <p>
                                <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                    <tr>
                                        <td>
                                            SSW Data Renovator reports differences between tables and fields as well as indexes,
                                            relationships or properties.
                                        </td>
                                    </tr>
                                </table>
                            </p>
                            <p>
                                Making structural changes to the database works when the database is very large
                                and only a small number of changes have been made, alternatively the data is transferred
                                from the old version to the new. This ensures that none of the changes made in development
                                are lost and the data is valid. <span lang="EN-US">&nbsp;<o:p></o:p></span></p>
                        </p>
                        <table border="1" cellpadding="5" cellspacing="0" width="100%">
                            <tr>
                                <td>
                                    SSW Data Renovator performs data transfer from one database to another without any
                                    changes to the old database. Tables and Fields can even be renamed and transferred
                                    without renaming the fields in the old database.
                                </td>
                            </tr>
                        </table>
                        <p>
                            Checking all data has been transferred correctly
                        </p>
                        <p>
                            After the data has been transferred, checks are needed to ensure that all the records
                            have been transferred correctly. Usually this consists of counting the records in
                            the tables before and after the transfer.
                        </p>
                        <p>
                            <table border="1" cellpadding="5" cellspacing="0" width="100%">
                                <tr>
                                    <td>
                                        SSW Data Renovator automatically displays a list of tables and the number of records
                                        before and after the transfer.
                                    </td>
                                </tr>
                            </table>
                        </p>
                        <p>
                            The history behind SSW Data Renovator why it was developed
                        </p>
                        <p>
                            At SSW the common scenario when the client requested changes to an existing application
                            was that:
                            <ul>
                                <li>While the changes are made the client continued to use the database system in their
                                    offices </li>
                                <li>The developers worked on the Application Database and made structural changes to
                                    a copy of the Data Database. </li>
                                <li>Changes to the Data Database were tracked and either Update Queries or DAO code
                                    was written to make the update. </li>
                            </ul>
                            After development was finished, a visit was made to the clients offices and the
                            database was taken offline while changes were made manually to the Data database.
                            This was time consuming and expensive for the client, there had to be a better way
                        </p>
                        <p>
                            Using SSW Data Renovator
                        </p>
                        <p>
                            So we developed SSW Data Renovator. This allows us to do the development in a similar
                            way but when we come to update the data at the clients offices we use SSW Data Renovator.
                            We compare the version that the Client has been using against the version that has
                            just come out of development. The changes are checked and confirmed and all reports
                            are printed. The data is then transferred into a clean copy of the new database
                            structure and the number of records transferred is checked from within the SSW Data
                            Renovator interface. The downtime of the clients database system is shortened and
                            the possibility of mistakes is reduced.
                        </p>
                        <table border="1" cellpadding="5" cellspacing="0" size="100%">
                            <tr>
                                <td>
                                    Note: If the client is not accessible we use Data PRO! Which uses a different approach
                                    in that it records changes to the data database and replicates at the client site
                                    i.e. perform changes to database structure remotely without user intervention.
                                </td>
                            </tr>
                        </table>
                        <h2>
                            More Information</h2>
                        <p>
                            SSW Data Renovator Home Page
                            <br>
                            <a href="/ssw/DataRenovator/">http://www.ssw.com.au/DataRenovator/ </a>
                        </p>
                        <p>
                            SSW Data PRO! Home Page
                            <br>
                            <a href="/ssw/DataPRO/">http://www.ssw.com.au/DataPRO/ </a>
                        </p>
                        <p>
                            SSW Home Page
                            <br>
                            <a href="/ssw/">/ssw/ </a>
                        </p>
                        <a href="javascript:sendEmail('696e666f407373772e636f6d2e6175', 'Employment')" onmouseover="javascript:displayStatus('696e666f407373772e636f6d2e6175'); return true;"
                            onmouseout="javascript:clearStatus(); return true;">Email SSW</a>
                        <br>
                        <a href="/ssw/Employees/employeesprofile.aspx?EmpID=rd">Ross Donald</a>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
