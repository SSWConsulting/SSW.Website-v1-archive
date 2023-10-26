<%@ Page  Language="C#"  MasterPageFile="~/Masters/RavenSubpage.master" Title="SSW .NET Toolkit - Progress bars/Status forms"  %>
<%@ Register TagPrefix="SSW" TagName="incDemonstration" Src="~/Components/incDemonstration.ascx" %>
<%@ Register TagPrefix="SSW" TagName="incStars" Src="~/Components/incStars.ascx" %>
<%@ Register TagPrefix="SSW" TagName="UserGuideLinks" Src="~/Components/UserGuideLinks.ascx" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderScripts" runat="server">
    <meta name="robots" content="noindex">
    <meta name="googlebot" content="noindex">
</asp:Content>

<asp:content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
    <p><a href="/ssw/NETToolkit/">SSW .NET Toolkit</a> > <a href="/ssw/NETToolkit/userguide.aspx">User Guide</a></p>

    <p><img src="Images/NETToolkitLogo.gif" alt="DOT NET Tool kit - Develop Applications More Efficiently with the SSW .NET Toolkit" width="188" height="83"/></p>

    <h1>Using Progress bars/Status forms</h1>
    <h2>ProgressForm for a single long-running task</h2>	
    <p>If you need to run just a single long-running task, use the ProgressForm.</p>
    <p><img  style="border:0;" src ="Images/ProgressForm1.JPG" alt="ProgressForm with task being processed" width="393" height="170"/><br/>
       <b>Figure: ProgressForm with task being processed</b></p><br />
    <p><img  style="border:0;" src ="Images/ProgressForm2.JPG" alt="ProgressForm with task completed" width="393" height="169"/><br/>
       <b>Figure: ProgressForm with task completed</b></p>
    <br />
	<table class="clsSSWTableCode">
		<tr>
			<td>
			<blockquote>
				<pre>
				<code>			
    Private Class Task Inherits ProgressWorker
        Public Overrides Function Run() As Boolean
            Me.OnProgressChanged(New ProgressChangedEventArgs("Start", 0))
            For i As Int16 = 0 To 50
                If Me.ShouldCancel Then
                    Return False
                End If
                Threading.Thread.Sleep(100)
                Me.OnProgressChanged(New ProgressChangedEventArgs("Step " + i.ToString, i * 2))
            Next

            Return True
        End Function
    End Class   

    Private Sub btnRunOne_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRunOne.Click
        Dim task As New Task
        task.Description = "Task"

        Dim Progress As New ProgressForm
        Progress.Task = task
        Progress.Task = task
        Progress.AutoStart = True
        Progress.AutoClose = False
        Progress.AllowBubbleExceptions = False
        Progress.ShowDialog()
    End Sub			
				</code>
				</pre>
			</blockquote>
			</td>
		</tr>
	</table>	
			
    <h2>MultiProgressForm for more complex task lists</h2>
    <p>Use the MultiProgressForm for more complex task lists. This sample will run multiple tasks in sequential order.</p>
    <p><img  style="border:0;" src ="Images/MultiProgressForm1.JPG" alt="MultiProgressForm with tasks being processed" width="570" height="337"/><br/>
       <b>Figure: MultiProgressForm with tasks being processed</b></p><br />
    <p><img  style="border:0;" src ="Images/MultiProgressForm2.JPG" alt="MultiProgressForm with tasks completed" width="570" height="337"/><br/>
       <b>Figure: MultiProgressForm with tasks completed</b></p>
       <br />
	<table class="clsSSWTableCode">
		<tr>
			<td>
			<blockquote>
				<pre>
				<code>
    Private Class Task1 Inherits ProgressWorker
        Public Overrides Function Run() As Boolean
            Me.OnProgressChanged(New ProgressChangedEventArgs("Start", 0))
            For i As Int16 = 0 To 10
                If Me.ShouldCancel Then
                    Return False
                End If
                Threading.Thread.Sleep(100)
                Me.OnProgressChanged(New ProgressChangedEventArgs("Step " + i.ToString, i * 10))
            Next
            
            Return True
        End Function
    End Class

    Private Class Task2 Inherits ProgressWorker
        Public Overrides Function Run() As Boolean
            Me.OnProgressChanged(New ProgressChangedEventArgs("Start", 0))
            For i As Int16 = 0 To 50
                If Me.ShouldCancel Then
                    Return False
                End If
                Threading.Thread.Sleep(100)
                Me.OnProgressChanged(New ProgressChangedEventArgs("Step " + i.ToString, i * 2))
            Next

            Return True
        End Function
    End Class

    Private Class Task3 Inherits ProgressWorker
        Public Overrides Function Run() As Boolean
            Me.OnProgressChanged(New ProgressChangedEventArgs("Start", 0))
            For i As Int16 = 0 To 10
                If Me.ShouldCancel Then
                    Return False
                End If
                Threading.Thread.Sleep(300)
                If i Mod 4 = 0 Then
                    Threading.Thread.Sleep(400)
                End If
                Me.OnProgressChanged(New ProgressChangedEventArgs("Step " + i.ToString, i * 10))
            Next

            Return True
        End Function
    End Class    
    
    Private Sub btnRunMultiple_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRunMultiple.Click
        Dim t1 As New Task1
        Dim t2 As New Task2
        Dim t3 As New Task3
        Dim t4 As New Task1

        t1.Description = "Task 1"
        t2.Description = "Task 2"
        t3.Description = "Task 3"
        t4.Description = "Task 4"

        Dim MultiProgress As New MultiProgressForm

        MultiProgress.Tasks.Add(t1)
        MultiProgress.Tasks.Add(t2)
        MultiProgress.Tasks.Add(t3)
        MultiProgress.Tasks.Add(t4)

        MultiProgress.AutoStart = True
        MultiProgress.AutoClose = False

        MultiProgress.UseOrderedExecution = True
        MultiProgress.UseOrderedDependancy = True
        MultiProgress.AllowBubbleExceptions = False

        MultiProgress.ShowDialog()
    End Sub				
				</code>
				</pre>
			</blockquote>
			</td>
		</tr>
	</table>	
</asp:content>