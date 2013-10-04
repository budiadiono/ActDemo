<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ActDemo._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Ajax Control Toolkit with jQueryUI</h2>
                <p>
                    This page using AjaxControlToolkit 
                    <strong><asp:Label ID="lblActVersion" runat="server" Text="Label"></asp:Label></strong>, 
                    jQuery <strong id="j-version"></strong> 
                    and jQuery UI <strong id="jui-version"></strong>
                </p>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">ACT DatePicker</a></li>
            <li><a href="#tabs-2">ACT ToggleButtonExtender</a></li>
            <li><a href="#tabs-3">ACT Married With jQuery</a></li>
            <li><a href="#tabs-4">ACT Accordion Created Programmatically</a></li>
        </ul>
        <div id="tabs-1">
            <p>
                <asp:TextBox ID="vacationDate" runat="server" />
                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="vacationDate" runat="server" />
            </p>
        </div>
        <div id="tabs-2">
            <p>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Like Me"></asp:Label>
                        <ajaxToolkit:ToggleButtonExtender ID="ToggleEx" runat="server"
                                                          TargetControlID="CheckBox1" 
                                                          ImageWidth="19" 
                                                          ImageHeight="19"
                                                          CheckedImageAlternateText="Check"
                                                          UncheckedImageAlternateText="UnCheck"
                                                          UncheckedImageUrl="images/ToggleButton_Unchecked.gif" 
                                                          CheckedImageUrl="images/ToggleButton_Checked.gif" />    
                        <button type="submit">Submit</button>
                        <asp:Label ID="lblResult" runat="server" Text="Submit please..."></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </p>
        </div>
        <div id="tabs-3">
            <p>
                <ajaxToolkit:Accordion ID="MyAccordion" runat="server" SelectedIndex="0"
                                       HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                                       ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
                                       TransitionDuration="250" AutoSize="Limit" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
                    <Panes>
                        <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                            <Header><a href="" class="accordionLink">1. jQueryUI Accordion</a></Header>
                            <Content>
                                <div id="accordion" style="height: 400px">
                                    <h3>Section 1</h3>
                                    <div>
                                        <p>
                                            Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
                                            ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
                                            amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
                                            odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
                                        </p>
                                    </div>
                                    <h3>Section 2</h3>
                                    <div>
                                        <p>
                                            Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
                                            purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
                                            velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
                                            suscipit faucibus urna.
                                        </p>
                                    </div>
                                    <h3>Section 3</h3>
                                    <div>
                                        <p>
                                            Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
                                            Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
                                            ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
                                            lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
                                        </p>
                                        <ul>
                                            <li>List item one</li>
                                            <li>List item two</li>
                                            <li>List item three</li>
                                        </ul>
                                    </div>
                                    <h3>Section 4</h3>
                                    <div>
                                        <p>
                                            Cras dictum. Pellentesque habitant morbi tristique senectus et netus
                                            et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
                                            faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
                                            mauris vel est.
                                        </p>
                                        <p>
                                            Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
                                            Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
                                            inceptos himenaeos.
                                        </p>
                                    </div>
                                </div>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="AccordionPane2" runat="server">
                            <Header><a href="" class="accordionLink">2. jQueryUI AutoComplete</a></Header>
                            <Content>
                                <p>The Autocomplete widgets provides suggestions while you type into the field. Here the suggestions are tags for programming languages, give "ja" (for Java or JavaScript) a try.</p>
                                <div class="ui-widget">
                                    <label for="tags">Tags: </label>
                                    <input id="tags" />
                                </div>
                            </Content>
                        </ajaxToolkit:AccordionPane>
                        <ajaxToolkit:AccordionPane ID="AccordionPane3" runat="server">
                            <Header><a href="" class="accordionLink">3. jQuery UI DatePicker</a></Header>
                            <Content>
                                <p>Date: <input type="text" id="datepicker" /></p>
                            </Content>
                        </ajaxToolkit:AccordionPane>                        
                    </Panes>
                </ajaxToolkit:Accordion>
            </p>
        </div>
        <div id="tabs-4">
            <ajaxToolkit:Accordion ID="DynamicAccordion" runat="server" SelectedIndex="0"
                                   HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected"
                                   ContentCssClass="accordionContent" FadeTransitions="false" FramesPerSecond="40" 
                                   TransitionDuration="250" AutoSize="Limit" RequireOpenedPane="false" SuppressHeaderPostbacks="true">
                <Panes></Panes>
            </ajaxToolkit:Accordion>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ClientScriptContent">
    <script type="text/javascript">
        $(function() {

            $("#j-version").text($.fn.jquery);
            $("#jui-version").text($.ui.version);

            $("#tabs").tabs();

            $("#accordion").accordion({
                heightStyle: "content"
            });

            var availableTags = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
            ];
            $("#tags").autocomplete({
                source: availableTags
            });

            $("#datepicker").datepicker();
        });
    </script>
</asp:Content>