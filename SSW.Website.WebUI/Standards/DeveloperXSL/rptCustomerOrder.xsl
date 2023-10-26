<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" language="vbscript">
<xsl:template match="/">
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=UTF-8" />
<TITLE>
rptCustomerOrder
</TITLE>
<STYLE TYPE="text/css">

		.Style0 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: #ffffff; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 700; FONT-SIZE: 20pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style1 { BORDER-STYLE: solid; BORDER-WIDTH: 2pt; BORDER-COLOR: #c0c0c0; VISIBILITY: visible }
	
		.Style2 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 700; FONT-SIZE: 11pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style3 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: right; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 700; FONT-SIZE: 11pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style4 { BORDER-STYLE: solid; BORDER-WIDTH: 2pt; BORDER-COLOR: #000080; VISIBILITY: visible }
	
		.Style5 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: general; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 11pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style6 { BORDER-STYLE: none; COLOR: #000000; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: general; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 400; FONT-SIZE: 8pt; FONT-FAMILY: Arial; FONT-STYLE: normal; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style7 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: left; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 700; FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	
		.Style8 { BORDER-STYLE: none; COLOR: #000080; BACKGROUND-COLOR: transparent; BORDER-WIDTH: 1px; BORDER-COLOR: #000000; TEXT-ALIGN: right; WRITING-MODE: lr-tb; VISIBILITY: visible; FONT-WEIGHT: 700; FONT-SIZE: 9pt; FONT-FAMILY: Times New Roman; FONT-STYLE: italic; TEXT-DECORATION: none; PADDING-TOP: 0cm; PADDING-BOTTOM: 0cm; PADDING-RIGHT: 0cm; PADDING-LEFT: 0cm }
	</STYLE>
</HEAD>
<BODY link="#0000ff" vlink="#800080">

<xsl:eval>SetGroupFilter(0, "CustomerID", "qryCustomerOrder", "each value", "1")</xsl:eval><xsl:eval>SetGroupFilter(1, "CompanyName", "qryCustomerOrder", "each value", "1")</xsl:eval>
<xsl:for-each select="/dataroot/qryCustomerOrder" order-by="+ CustomerID;+ CompanyName">
<xsl:eval>AppendNodeIndex(me)</xsl:eval>
</xsl:for-each>
<xsl:for-each select="/dataroot/qryCustomerOrder" order-by="+ CustomerID;+ CompanyName">
<xsl:eval>CacheCurrentNode(me)</xsl:eval>
<xsl:if expr="OnFirstNode">
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 1.603cm; POSITION: relative">
<SPAN class="Style0" style="LEFT: 0.1cm; TOP: 0.1cm; WIDTH: 5.502cm; HEIGHT: 0.899cm; OVERFLOW: hidden; POSITION: absolute">
rptCustomerOrder
</SPAN>
<HR id="Line11" class="Style1" style="LEFT: 0cm; TOP: 0.1cm; WIDTH: 12.513cm; HEIGHT: 0cm; POSITION: absolute" />
</DIV>
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0.73cm; POSITION: relative">
<SPAN class="Style2" style="LEFT: 0.1cm; TOP: 0.1cm; WIDTH: 4.523cm; HEIGHT: 0.529cm; OVERFLOW: hidden; POSITION: absolute">
CustomerID
</SPAN>
<SPAN class="Style3" style="LEFT: 5.895cm; TOP: 0.1cm; WIDTH: 2.814cm; HEIGHT: 0.529cm; OVERFLOW: hidden; POSITION: absolute">
Order ID
</SPAN>
<SPAN class="Style3" style="LEFT: 8.811cm; TOP: 0.1cm; WIDTH: 3.64cm; HEIGHT: 0.529cm; OVERFLOW: hidden; POSITION: absolute">
Subtotal
</SPAN>
<HR id="Line12" class="Style4" style="LEFT: 0cm; TOP: 0cm; WIDTH: 12.513cm; HEIGHT: 0cm; POSITION: absolute" />
<HR id="Line13" class="Style4" style="LEFT: 0cm; TOP: 0.677cm; WIDTH: 12.513cm; HEIGHT: 0cm; POSITION: absolute" />
</DIV>
</xsl:if>
<xsl:if expr="OnGroupHeader(me, 0)">
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0.698cm; POSITION: relative">
<SPAN class="Style5" style="LEFT: 0.1cm; TOP: 0cm; WIDTH: 12.301cm; HEIGHT: 0.608cm; OVERFLOW: hidden; POSITION: absolute">
<xsl:eval no-entities="true">Format(GetValue("CustomerID", 202),"" ,"")</xsl:eval>
</SPAN>
</DIV>
</xsl:if>
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0.576cm; POSITION: relative">
<SPAN class="Style6" style="TEXT-ALIGN: right; LEFT: 5.895cm; TOP: 0cm; WIDTH: 2.814cm; HEIGHT: 0.476cm; OVERFLOW: hidden; POSITION: absolute">
<xsl:eval no-entities="true">Format(GetValue("OrderID", 3),"" ,"")</xsl:eval>
</SPAN>
<SPAN class="Style6" style="TEXT-ALIGN: right; LEFT: 8.811cm; TOP: 0cm; WIDTH: 3.64cm; HEIGHT: 0.476cm; OVERFLOW: hidden; POSITION: absolute">
<xsl:eval no-entities="true">Format(GetValue("Subtotal", 6), "$#,##0.00;($#,##0.00)", "")</xsl:eval>
</SPAN>
</DIV>
<xsl:if expr="OnLastNode">
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0.931cm; POSITION: relative">
<SPAN class="Style7" style="LEFT: 0.1cm; TOP: 0.402cm; WIDTH: 2.894cm; HEIGHT: 0.529cm; OVERFLOW: hidden; POSITION: absolute">
<xsl:eval no-entities="true">Format(Now(), "Long Date", "")</xsl:eval>
</SPAN>
<SPAN class="Style8" style="LEFT: 4.398cm; TOP: 0.402cm; WIDTH: 8.052cm; HEIGHT: 0.529cm; OVERFLOW: hidden; POSITION: absolute">
<xsl:eval no-entities="true">Format("Page " &amp; Page() &amp; " of " &amp; Pages(),"" ,"")</xsl:eval>
</SPAN>
</DIV>
<DIV style="BORDER-STYLE: none; WIDTH: 12.698cm; BACKGROUND-COLOR: #ffffff; VISIBILITY: visible; HEIGHT: 0cm; POSITION: relative">
</DIV>
</xsl:if>
<xsl:eval>NextNode()</xsl:eval>
</xsl:for-each>

</BODY>
</HTML>
<xsl:script>
<![CDATA[
						'variable declaration
						dim cNodes
						dim iCurrNode
						dim rgNodes()
						dim objCurrNode
						dim sizeIncrement
						dim objGroupNodes
						dim rgFields()
						dim rgRowsources()
						dim rgGroupOn()
						dim rgGroupInterval()
						dim rgfGroupBoundaries()
						dim cGroups
						dim cGroupBoundaries
						dim rgGroupRowsources()

						'variable initialization
						sizeIncrementGroup = 10
						sizeIncrementNode = 100
						cNodes = 0
						cGroups = 0
						cGroupBoundaries = 0
						iCurrNode = 0
						objCurrNode = null
						objGroupNodes = null
						ReDim rgNodes(sizeIncrement)
						ReDim rgFields(sizeIncrementGroup)
						ReDim rgRowsources(sizeIncrementGroup)
						ReDim rgGroupOn(sizeIncrementGroup)
						ReDim rgGroupInterval(sizeIncrementGroup)
						ReDim rgfGroupBoundaries(sizeIncrementNode)
						ReDim rgGroupRowsources(sizeIncrementGroup)
						

						function SetGroupFilter(iLevel, strField, strRowsource, strGroupOn, strGroupInterval)
							if (cGroups Mod sizeIncrementGroup) = 0 then
								ReDim Preserve rgFields(sizeIncrementGroup+cGroups)
								ReDim Preserve rgRowsources(sizeIncrementGroup+cGroups)
								ReDim Preserve rgGroupOn(sizeIncrementGroup+cGroups)
								ReDim Preserve rgGroupInterval(sizeIncrementGroup+cGroups)
								ReDim Preserve rgGroupRowsources(sizeIncrementGroup+cGroups)
							end if
							dim Field
							dim Rowsource
							dim GroupOn
							dim GroupInterval
							rgFields(cGroups) = strField
							rgRowsources(cGroups) = strRowsource
							rgGroupOn(cGroups) = strGroupOn
							rgGroupInterval(cGroups) = strGroupInterval
							cGroups = cGroups + 1
							SetGroupFilter = ""
						end function

						function AppendNodeIndex(objNode)
							dim iNode
							dim fGroupBoundary
							iNode = childNumber(objNode) - 1
							if (cNodes Mod sizeIncrementNode) = 0 then
								ReDim Preserve rgNodes(sizeIncrementNode+cNodes)
							end if
							rgNodes(cNodes) = iNode

							if (cGroupBoundaries Mod sizeIncrementNode) = 0 then
								ReDim Preserve rgfGroupBoundaries((sizeIncrementNode*cGroups)+cGroupBoundaries)
							end if

							if (cGroups > 0) and (cNodes > 0) then
								For i = 0 To (cGroups - 1)
									set objCurr = objNode.selectSingleNode(rgFields(i))
									set objPrev = rgGroupRowsources(i).item(rgNodes(cNodes-1)).selectSingleNode(rgFields(i))
									rgfGroupBoundaries(cGroups*(cNodes-1) + i) = OnGroupBoundary(objPrev, objCurr, rgGroupOn(i), rgGroupInterval(i))
								Next
							end if
							if (cGroups > 0) and (cNodes = 0) then
								For i = 0 To (cGroups - 1)
									set rgGroupRowsources(i) = objNode.selectNodes("/dataroot/" & rgRowsources(i))
								Next
							end if

							cGroupBoundaries = cGroupBoundaries + cGroups
							cNodes = cNodes + 1
							AppendNodeIndex = ""
						end function

						function GetNodeIndex(iNode)			
							GetNodeIndex = rgNodes(iNode)
						end function
						
						function NextNode()						
							iCurrNode = iCurrNode + 1
							NextNode = ""
						end function

						function CacheCurrentNode(objNode)		
							set objCurrNode = objNode
							CacheCurrentNode = ""
						end function

						function Page()
							Page = 1
						end function
						
						function Pages()
							Pages = 1
						end function

						function ToString(varValue)
							if IsNull(varValue) then
								ToString = ""
								exit function
							end if
							ToString = "" & varValue
						end function

						function Format(varValue, strFormat, strAdditionalArgs)

							dim FormatTemp
							
							if (IsDate(varValue)) then
								select case strFormat
									case "General Date"
										FormatTemp = FormatDateTime(varValue, vbGeneralDate)
									case "Long Date"
										FormatTemp = FormatDateTime(varValue, vbLongDate)
									case "Medium Date"
										FormatTemp = Day(varValue) & "-" & MonthName(Month(varValue), True) & "-" & Mid(Year(varValue), 3, 2)
									case "Short Date"
										FormatTemp = FormatDateTime(varValue, vbShortDate)
									case "Long Time"
										FormatTemp = FormatDateTime(varValue, vbLongTime)							
									case "Medium Time"
										strTemp = FormatDateTime(varValue, vbLongTime)
										if (IsNumeric(Mid(strTemp, 2, 1))) then
											FormatTemp = Mid(strTemp,1,5) & Mid(strTemp, 9)
										else
											FormatTemp = Mid(strTemp,1,4) & Mid(strTemp, 9)
										end if
									case "Short Time"
										FormatTemp = FormatDateTime(varValue, vbShortTime)
									case else
										FormatTemp = FormatDateTime(varValue, vbGeneralDate)
								end select
							else 
								if (IsNumeric(varValue)) then
									select case strFormat
										case "General Number"
											FormatTemp = varValue
										case "Currency"
											Dim lcid
											if (IsNumeric(strAdditionalArgs)) then
												lcid = SetLocale(strAdditionalArgs)
												FormatTemp = FormatCurrency(varValue)
												SetLocale(lcid)
											end if

										case "Fixed"
											if (IsNumeric(strAdditionalArgs)) then
												FormatTemp = FormatNumber(varValue, strAdditionalArgs, vbTrue, vbUseDefault, vbFalse)
											else
												FormatTemp = FormatNumber(varValue, 2, vbTrue, vbUseDefault, vbFalse)
											end if
										case "Standard"
											if (IsNumeric(strAdditionalArgs)) then
												FormatTemp = FormatNumber(varValue, strAdditionalArgs, vbUseDefault, vbUseDefault, vbTrue)
											else
												FormatTemp = FormatNumber(varValue, 2, vbUseDefault, vbUseDefault, vbTrue)
											end if
										case "Percent"
											if (IsNumeric(strAdditionalArgs)) then
												FormatTemp = FormatPercent(varValue, strAdditionalArgs)
											else
												FormatTemp = FormatPercent(varValue)
											end if
										case "Scientific"
											nExp = Int(Log(Abs(varValue))/Log(10))
											nValue = Round(CDbl(varValue)/(10^CDbl(nExp)), 2)
											if (Sgn(nExp) < 0) then
												FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) & "E-" & nExp
											else
												FormatTemp = FormatNumber(nValue, 2, vbTrue, vbFalse, vbFalse) & "E+" & nExp
											end if
										case "True/False"
											if (CBool(varValue)) then
												FormatTemp = "True"
											else
												FormatTemp = "False"
											end if
										case "Yes/No"
											if (CBool(varValue)) then
												FormatTemp = "Yes"
											else
												FormatTemp = "No"
											end if 
										case "On/Off"
											if (CBool(varValue)) then
												FormatTemp = "On"
											else
												FormatTemp = "Off"
											end if 
									end select
								end if
							end if

							if IsEmpty(FormatTemp) then
								FormatTemp = varValue
							end if

							if FHasNoContent(FormatTemp) then
								Format = "&nbsp;"
							else
								Format = FormatTemp
							end if
											
						end function

						function FHasNoContent(objValue)
							if (IsNull(objValue) or IsEmpty(objValue) or objValue = "") then
								FHasNoContent = true
							else
								FHasNoContent = false
							end if
						end function

						function IIf(fCond, objTrue, objFalse)
							if fCond then
								IIf = objTrue
								exit function
							end if
							IIf = objFalse
						end function

						function nz(varValue, varReplace)
							if (varValue = null) or (varValue = "") then
								nz = varReplace
							else
								nz = varValue
							end if
						end function

						function sum(strExpr, iLevel)
							Dim nSum

							nSum = 0
							set objCurrNodeT = objCurrNode

							For i = GetGroupLowerBound(iLevel) to GetGroupUpperBound(iLevel)
								set objCurrNode = rgGroupRowsources(iLevel).item(rgNodes(i))
								nSum = nSum + eval(strExpr)
							Next

							set objCurrNode = objCurrNodeT
							sum = nSum
						end function

						function Count(strExpr, iLevel)
							Count = GetGroupUpperBound(iLevel) - GetGroupLowerBound(iLevel) + 1
						end function

						function Avg(strExpr, iLevel)
							Dim nSum
							Dim nCount
							nSum = Sum(strExpr, iLevel)
							nCount = Count(strExpr, iLevel)
							if nCount > 0 then
								Avg = nSum / nCount
							else
								Avg = nSum
							end if
						end function

						function min(strExpr, strArgs)
							Dim nMin

							nMin = Eval(strExpr)
							set objCurrNodeT = objCurrNode
							
							For i = GetGroupLowerBound(iLevel) to GetGroupUpperBound(iLevel)
								set objCurrNode = rgGroupRowsources(iLevel).item(rgNodes(i))
								nTemp = eval(strExpr)
								if (nTemp < nMin) then
									nMin = nTemp
								end if
							Next

							set objCurrNode = objCurrNodeT
							min = nMin
						end function	

						function max(strExpr, strArgs)
							Dim nMax

							nMax = Eval(strExpr)
							set objCurrNodeT = objCurrNode
							
							For i = GetGroupLowerBound(iLevel) to GetGroupUpperBound(iLevel)
								set objCurrNode = rgGroupRowsources(iLevel).item(rgNodes(i))
								nTemp = eval(strExpr)
								if (nTemp > nMax) then
									nMax = nTemp
								end if
							Next

							set objCurrNode = objCurrNodeT
							max = nMax
						end function					

						function GetValue(strRef, nType)
							set objNode = objCurrNode.selectSingleNode(strRef)
							if (objNode is nothing) or IsNull(objNode) or IsEmpty(objNode) or not(IsObject(objNode)) then
								GetValue = ""
								exit function
							end if

							select case nType
								case 2 		' adSmallInt
									GetValue = CLng(objNode.text)
									exit function
								case 3 		' adInteger
									GetValue = CLng(objNode.text)
									exit function
								case 20		' adBigInt
									GetValue = CLng(objNode.text)
									exit function
								case 17		' adUnsignedTinyInt
									GetValue = CLng(objNode.text)
									exit function
								case 18		' adUnsignedSmallInt
									GetValue = CLng(objNode.text)
									exit function
								case 19		' adUnsignedInt
									GetValue = CLng(objNode.text)
									exit function
								case 21		' adUnsignedBigInt
									GetValue = CLng(objNode.text)
									exit function
								case 4		' adSingle
									GetValue = CDbl(objNode.text)
									exit function
								case 5		' adDouble
									GetValue = CDbl(objNode.text)
									exit function
								case 6		' adCurrency
									GetValue = CCur(objNode.text)
									exit function
								case 14		' adDecimal
									GetValue = CDbl(objNode.text)
									exit function
								case 131	' adNumeric
									GetValue = CDbl(objNode.text)
									exit function
								case 139	' adVarNumeric
									GetValue = CDbl(objNode.text)
									exit function
								case 11		' adBoolean
									GetValue = CBool(objNode.text)
									exit function
								case 7 		' adDate
									GetValue = BuildDateFromStr(objNode.text, true)
									exit function
								case 133	' adDBDate
									GetValue = BuildDateFromStr(objNode.text, true)
									exit function
								case 134	' adDBTime
									GetValue = BuildDateFromStr(objNode.text, true)
									exit function
								case 135	' adDBTimeStamp
									GetValue = BuildDateFromStr(objNode.text, true)
									exit function
								case 8		' adBSTR
								case 120	' adChar
								case 200	' adVarChar
								case 201	' adLongVarChar
								case 130	' adWChar:
								case 202	' adVarWChar
								case 203	' adLongVarWChar	
							end select
			
							'Default are strings
							GetValue = objNode.text
						end function

						function GetGroupLowerBound(iLevel)
							iBound = iCurrNode-1
							iIndex = cGroups*(iBound) + iLevel

							'Error checking
							if (iIndex >= cGroupBoundaries or iBound >= cNodes) then
								GetGroupLowerBound = 0
								exit function
							end if
												
							do while (iIndex >= 0 and iBound >= 1)
								if rgfGroupBoundaries(iIndex) then
									GetGroupLowerBound = iBound + 1
									exit function
								else
									iBound = iBound - 1
									iIndex = cGroups*(iBound) + iLevel
								end if
							loop

							GetGroupLowerBound = 0
						end function

						function GetGroupUpperBound(iLevel)
							iBound = iCurrNode
							iIndex = cGroups*(iBound) + iLevel

							'Error checking
							if (iIndex < 0 or iBound < 0) then
								GetGroupUpperBound = cNodes - 1
								exit function
							end if
												
							do while (iIndex < cGroupBoundaries and iBound < (cNodes - 1))
								if rgfGroupBoundaries(iIndex) then
									GetGroupUpperBound = iBound
									exit function
								else
									iBound = iBound + 1
									iIndex = cGroups*(iBound) + iLevel
								end if
							loop

							GetGroupUpperBound = cNodes - 1
						end function

						function OnGroupHeader(objElem, iLevel)
							if onFirstNode then
								OnGroupHeader = true
								exit function
							end if

							iIndex = cGroups*(iCurrNode-1) + iLevel
							if (iLevel >= cGroups) or (iIndex >= cGroupBoundaries) then
								OnGroupHeader = false
								exit function
							end if

							OnGroupHeader = rgfGroupBoundaries(iIndex)
						end function

						function OnGroupFooter(objElem, iLevel)
							if OnLastNode then
								OnGroupFooter = true
								exit function
							end if

							iIndex = cGroups*(iCurrNode) + iLevel
							if (iLevel >= cGroups) or (iIndex >= cGroupBoundaries) then
								OnGroupFooter = false
								exit function
							end if

							OnGroupFooter = rgfGroupBoundaries(iIndex)
						end function

						function OnGroupBoundary(objPrev, objCurr, strGroupOn, strInterval)
							dim strPrevValue
							dim strCurrValue

							if (objPrev is nothing) and (objCurr is nothing) then
								OnGroupBoundary = false
								exit function
							else 
								if (objPrev is nothing) or (objCurr is nothing) then
									OnGroupBoundary = true
									exit function
								end if 
							end if

							strPrevValue = objPrev.text
							strCurrValue = objCurr.text
						
							select case strGroupOn
								case "each value"
									if (strPrevValue = strCurrValue) then
										OnGroupBoundary = false
										exit function
									end if
								case "prefix characters"
									dim cChars 
									cChars = cInt(strInterval)
									if (Mid(strPrevValue, 1, cChars) = Mid(strCurrValue, 1, cChars)) then
										OnGroupBoundary = false
										exit function
									end if						
								case "year"
									if (Mid(strPrevValue, 1, 4) = Mid(strCurrValue, 1, 4)) then
										OnGroupBoundary = false
										exit function
									end if
								case "quarter"
									if (Mid(strPrevValue, 1, 4) = Mid(strCurrValue, 1, 4)) then
										dim qtrPrev
										dim qtrCurr
										qtrPrev = Int(Cint(Mid(strPrevValue, 6, 2) - 1) / 3)
										qtrCurr = Int(Cint(Mid(strCurrValue, 6, 2) - 1) / 3)
										if (qtrPrev = qtrCurr) then
											OnGroupBoundary = false
											exit function
										end if
									end if
								case "month"
									if (Mid(strPrevValue, 1, 7) = Mid(strCurrValue, 1, 7)) then
										OnGroupBoundary = false
										exit function
									end if
								case "week"
									if (Mid(strPrevValue, 1, 4) = Mid(strCurrValue, 1, 4)) then
										dim datePrev
										dim dateCurr
										datePrev = BuildDateFromStr(strPrevValue, false)
										dateCurr = BuildDateFromStr(strCurrValue, false)
										if (DatePart("ww", datePrev) = DatePart("ww", dateCurr)) then
											OnGroupBoundary = false
											exit function
										end if
									end if
								case "day"
									if (Mid(strPrevValue, 1, 10) = Mid(strCurrValue, 1, 10)) then
										OnGroupBoundary = false
										exit function
									end if
								case "hour"
									if (Mid(strPrevValue, 1, 13) = Mid(strCurrValue, 1, 13)) then
										OnGroupBoundary = false
										exit function
									end if
								case "minute"
									if (Mid(strPrevValue, 1, 16) = Mid(strCurrValue, 1, 16)) then
										OnGroupBoundary = false
										exit function
									end if
								case "interval"
									if (Int(CInt(strPrevValue) / CInt(strInterval)) = Int(CInt(strCurrValue) / CInt(strInterval))) then
										OnGroupBoundary = false
										exit function
									end if
							end select
						
							OnGroupBoundary = true
						end function

						function OnFirstNode
							if iCurrNode = 0 then
								OnFirstNode = true
								exit function
							end if
							OnFirstNode = false
						end function

						function OnLastNode
							if iCurrNode = (cNodes-1) then
								OnLastNode = true
								exit function
							end if
							OnLastNode = false
						end function

						function BuildDateFromStr(strDate, fIncludeTime)
							Dim Date
							Date = DateSerial(Mid(strDate, 1, 4), Mid(strDate, 6, 2), Mid(strDate, 9, 2))

							if (fIncludeTime) then
								Date = DateAdd("h", Mid(strDate, 12, 2), Date)
								Date = DateAdd("n", Mid(strDate, 15, 2), Date)
								Date = DateAdd("s", Mid(strDate, 18, 2), Date)
							end if
							
							BuildDateFromStr = Date
						end function
						]]>
</xsl:script>
</xsl:template>
</xsl:stylesheet>
