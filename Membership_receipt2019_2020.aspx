<%@ Page Language="C#" MasterPageFile="~/Templates/MasterPages/Empty.master" AutoEventWireup="true" Inherits="Asi.Web.UI.ContentRecordPage" Title="Membership_receipt2019_2020" %>
<%@ Register TagPrefix="CM" TagName="ContentPage" Src="~/AsiCommon/Controls/ContentManagement/ContentPage.ascx" %>
<%@ Register TagPrefix="CM" TagName="ContentPageFooter" Src="~/AsiCommon/Controls/ContentManagement/ContentPageFooter.ascx" %>
<%@ Register TagPrefix="CM" TagName="ContentWebUserControl_SSRSParamToSessionId" Src="~/custom/SSRSParamToSessionId.ascx" %>
<%@ Register TagPrefix="CM" TagName="ContentHtml" Src="~/AsiCommon/Controls/ContentManagement/DisplayHtml.ascx" %>
<%@ Register TagPrefix="CM" TagName="ReportDisplay" Src="~/iParts/Common/ReportDisplay/ReportDisplay.ascx" %>

<asp:Content ID="TemplateHead" ContentPlaceHolderID="TemplateHead" runat="server">

    <link rel="search" type="application/opensearchdescription+xml" href="<%# Asi.Business.ContentManagement.NavigationHierarchy.GetTildeExpansion() %>/OpenSearch.aspx" title="<%# iMISWebsite != null ? iMISWebsite.Title : string.Empty %> Search" />
</asp:Content>
<script language="C#" runat="server">

	override protected bool RequireAuthenticatedUser { get { return false; } }

	override public Guid ContentRecordKey { get { return new Guid("610e2891-c891-4b58-9fd5-9f67d54117c3"); } }

	override public Guid ContentHierarchyKey { get { return new Guid("6fca66b8-1435-4914-8395-3a9307e16fab"); } }

	protected override void EnsureChildUserControls()
	{
		base.EnsureChildUserControls();

		Asi.Web.UI.IUserControl childUserControl;
		Guid key;

		AddChildUserControl(ContentPage1);

		childUserControl = ciSSRSParamToSessionId as Asi.Web.UI.IUserControl;
		if (childUserControl != null)
			AddChildUserControl(childUserControl);
		key = new System.Guid("6f32bd25-38ae-423c-b906-fd31fd392ad7");
		if(!ContentItemKeyMap.ContainsKey(key))
			ContentItemKeyMap.Add(key, ciSSRSParamToSessionId);

		childUserControl = ciNewContentHtml21_31bea66eebd349ec97eb35d712b3a41a as Asi.Web.UI.IUserControl;
		if (childUserControl != null)
			AddChildUserControl(childUserControl);
		key = new System.Guid("31bea66e-ebd3-49ec-97eb-35d712b3a41a");
		if(!ContentItemKeyMap.ContainsKey(key))
			ContentItemKeyMap.Add(key, ciNewContentHtml21_31bea66eebd349ec97eb35d712b3a41a);

		childUserControl = ciNewReportDisplayCommon as Asi.Web.UI.IUserControl;
		if (childUserControl != null)
			AddChildUserControl(childUserControl);
		key = new System.Guid("2d00120e-ffca-4cf9-8aa6-fc9654282130");
		if(!ContentItemKeyMap.ContainsKey(key))
			ContentItemKeyMap.Add(key, ciNewReportDisplayCommon);

		childUserControl = ciNewContentHtml211_f9d8cd2226a24cf9be7cef59effd5d35 as Asi.Web.UI.IUserControl;
		if (childUserControl != null)
			AddChildUserControl(childUserControl);
		key = new System.Guid("f9d8cd22-26a2-4cf9-be7c-ef59effd5d35");
		if(!ContentItemKeyMap.ContainsKey(key))
			ContentItemKeyMap.Add(key, ciNewContentHtml211_f9d8cd2226a24cf9be7cef59effd5d35);

	}
</script>
<asp:Content ID="TemplateUserMessages" ContentPlaceHolderID="TemplateUserMessages" runat="server"></asp:Content>
<asp:Content ID="TemplateBody" ContentPlaceHolderID="TemplateBody" Runat="Server">
<script type="text/javascript">

</script>
	<asiweb:AsiWebPartManager id="WebPartManager1" runat="server">
		<StaticConnections>
		</StaticConnections>
	</asiweb:AsiWebPartManager>
<div>
	<div class="row">
		<div class="col-sm-12">
						<CM:ContentPage ID="ContentPage1" runat="server" PageNumber="1">
				<asp:WebPartZone ID="WebPartZone1_Page1" runat="server" PartChromeType="None" WebPartVerbRenderMode="TitleBar" CssClass="WebPartZone CleanText">
					<ZoneTemplate>
				<asp:Panel ID="ste_container_SSRSParamToSessionId" runat="server" style="position: relative; min-height: 20px; zoom: 1 !important; padding: 0px; margin: 0px;"><CM:ContentWebUserControl_SSRSParamToSessionId ID="ciSSRSParamToSessionId" runat="server" /><asiweb:SurfToEditButtonPanel ID="ste_ciSSRSParamToSessionId" runat="server" ContentKey="610e2891-c891-4b58-9fd5-9f67d54117c3" ContentItemKey="6f32bd25-38ae-423c-b906-fd31fd392ad7" /></asp:Panel>
				<CM:ContentHtml ID="ciNewContentHtml21_31bea66eebd349ec97eb35d712b3a41a" runat="server" ContentKey="610e2891-c891-4b58-9fd5-9f67d54117c3" ContentItemKey="31bea66e-ebd3-49ec-97eb-35d712b3a41a" Title="New ContentHtml_2_1" ShowTitleFlag="False" ShowBorder="False"><asp:Panel ID="Panel_NewContentHtml21" runat="server"><h1>Membership Renewal - Receipt</h1>
<h2><strong><span style="color: #ff0000;">FYI: This is 2019-2020 receipt that may you paid already.</span></strong></h2>
<ol>
    <li><strong>Sign In</strong> to creditinstitute.org</li>
    <li>Go to <strong>Members</strong> &gt; <strong>Membership Receipt</strong></li>
    <li>Follow the instructions to download your receipt.</li>
</ol>
<p><em>Important note: If you are not a signed in, the report will display with no data.&nbsp;</em><br />
<em>If you are signed in and your report is blank, your receipt may not be posted yet. Please allow 1 to 2 business days for your receipt to be posted.</em></p></asp:Panel></CM:ContentHtml>
				<CM:ReportDisplay ID="ciNewReportDisplayCommon" runat="server" ContentKey="610e2891-c891-4b58-9fd5-9f67d54117c3" ContentItemKey="2d00120e-ffca-4cf9-8aa6-fc9654282130" Title="New ReportDisplayCommon" ShowTitleFlag="False" PageTitle="" DoNotRenderInDesignMode="False" ShowBorder="False" ShowPDFButton="True" HasParametersInUrl="True" DisplayForAuthorizedUsersOnly="False" HideParametersIfInUrl="True" ShowExcelButton="False" ReportTemplatePath="$/- CIC/store/SSRS/DuesBilling-Receipt2019-2020.rdl" HideParameterPanel="True" HasParametersInSession="True" HideToolbar="False" HidePageNavigationControls="False" HideAllButPrint="False" />
				<CM:ContentHtml ID="ciNewContentHtml211_f9d8cd2226a24cf9be7cef59effd5d35" runat="server" ContentKey="610e2891-c891-4b58-9fd5-9f67d54117c3" ContentItemKey="f9d8cd22-26a2-4cf9-be7c-ef59effd5d35" Title="New ContentHtml_2_1_1" ShowTitleFlag="False" ShowBorder="False"><asp:Panel ID="Panel_NewContentHtml211" runat="server"><script>
(function($){
  $(function(){

$('#ctl01_TemplateBody_WebPartManager1_gwpciNewReportDisplayCommon_ciNewReportDisplayCommon_ButtonPDF').wrap("<div class='CICapply' style='overflow:hidden; padding-bottom:10px;'></div>");
$('#ctl01_TemplateBody_WebPartManager1_gwpciNewReportDisplayCommon_ciNewReportDisplayCommon_ButtonPDF').before("Click the button below to download your document as PDF. <br /><em>Please note that the preview below is a sample and displays correctly when opened or printed.</em> <br />");
$('#ctl01_TemplateBody_WebPartManager1_gwpciNewReportDisplayCommon_ciNewReportDisplayCommon_ButtonPDF').attr('src','/images/btn-download-invoice.png');
$('.CICapply').after("<hr />");

  })
})(jQuery);
</script></asp:Panel></CM:ContentHtml>
					</ZoneTemplate>
				</asp:WebPartZone>
			</CM:ContentPage>

		</div>
	</div>
</div>	
<CM:ContentPageFooter ID="ContentPageFooter1" runat="server" NumberOfPages="1" />

    <asiweb:AsiWebPartEditorZone ID="EditorZone1" runat="server">
        <ZoneTemplate>
            <asp:PropertyGridEditorPart ID="PropertyGridEditor" runat="server" />
        </ZoneTemplate>
    </asiweb:AsiWebPartEditorZone>
    <asiweb:AsiWebPartConnectionsZone ID="ConnectionZone1" runat="server" CloseVerb-Visible="false" />
</asp:Content>