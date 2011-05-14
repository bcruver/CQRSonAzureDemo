﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Ploeh.Samples.Booking.WebModel.BookingViewModel>" %>
<% using (Html.BeginForm())
   {%>
<%: Html.ValidationSummary(true) %>
<fieldset>
    <legend>Booking</legend>
    <div class="editor-label">
        <%: this.Html.LabelFor(model => model.Date) %>
    </div>
    <div class="editor-field">
        <%: this.Model.Date.ToShortDateString() %>
    </div>
    <div class="editor-label">
        <%: this.Html.LabelFor(model => model.Name) %>
    </div>
    <div class="editor-field">
        <%: this.Html.TextBoxFor(model => model.Name)%>
        <%: this.Html.ValidationMessageFor(model => model.Name)%>
    </div>
    <div class="editor-label">
        <%: this.Html.LabelFor(model => model.Email)%>
    </div>
    <div class="editor-field">
        <%: this.Html.TextBoxFor(model => model.Email)%>
        <%: this.Html.ValidationMessageFor(model => model.Email)%>
    </div>
    <div class="editor-label">
        <%: this.Html.LabelFor(model => model.Quantity)%>
    </div>
    <div class="editor-field">
        <%: this.Html.DropDownListFor(model => model.Quantity, Enumerable.Range(1, this.Model.Remaining).Select(i => new SelectListItem { Value = i.ToString(), Text = i.ToString() })) %>
        <%: this.Html.ValidationMessageFor(model => model.Quantity)%>
    </div>
    <p>
        <%: this.Html.HiddenFor(model => model.Date) %>
        <input type="submit" value="Save" />
    </p>
</fieldset>
<% } %>
<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
