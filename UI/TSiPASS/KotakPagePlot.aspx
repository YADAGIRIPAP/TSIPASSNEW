﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KotakPagePlot.aspx.cs" Inherits="UI_TSiPASS_KotakPagePlot" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <%--<script type="text/javascript">
        $(document).ready(function () {
            $("#nonseamless").submit();
            var x = document.getElementById('myDIV');
            if (x.style.visibility === 'hidden') {
                x.style.visibility = 'visible';
            } else {
                x.style.visibility = 'hidden';
            }
        });
    </script>--%>
</head>
<body>
    <form method="post" name="customerData" action="ccavRequestHandlerTSIIC.aspx">
    <div id="myDIV">
        <center>
            <input type="submit" value="Pay" /></center>
        <%--<table width="40%" height="100" border='1' align="center" runat="server" visible="true" style="display: none">
                <caption><font size="4" color="blue"><b>Integration Kit</b></font></caption>
            </table>--%>
        <table id="Table1" width="50%" height="100" border='1' align="center" runat="server" visible="true"
            style="display: none">
            <tr>
                <td>
                    Parameter Name:
                </td>
                <td>
                    Parameter Value:
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Compulsory information
                </td>
            </tr>
            <tr>
                <td>
                    Tid
                </td>
                <%--                    <td>

                        <input readonly="readonly" type="text" name="tid" id="tid" value="" runat="server" /></td>--%>
            </tr>
            <tr>
                <td>
                    Merchant Id :
                </td>
                <td>
                    <input type="text" name="merchant_id" id="merchant_id" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Order Id :
                </td>
                <td>
                    <input type="text" name="order_id" id="order_id" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Amount :
                </td>
                <td>
                    <input type="text" name="amount" id="amount" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Currency :
                </td>
                <td>
                    <input type="text" name="currency" value="INR" />
                </td>
            </tr>
            <tr>
                <td>
                    Redirect URL :
                </td>
                <td>
                    <input type="text" name="redirect_url" value="https://ipass.telangana.gov.in/UI/TSiPASS/ccavResponseHandlerTSIIC.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    Cancel URL :
                </td>
                <td>
                    <input type="text" name="cancel_url" value="https://ipass.telangana.gov.in/UI/TSiPASS/frmtsiicpaymentdraft.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    Language :
                </td>
                <td>
                    <input type="text" name="language" value="EN" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Billing information(optional):
                </td>
            </tr>
            <tr>
                <td>
                    Billing Name :
                </td>
                <td>
                    <input type="text" name="billing_name" id="billing_name" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing Address :
                </td>
                <td>
                    <input type="text" name="billing_address" id="billing_address" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing City :
                </td>
                <td>
                    <input type="text" name="billing_city" id="billing_city" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing State :
                </td>
                <td>
                    <input type="text" name="billing_state" id="billing_state" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing Zip :
                </td>
                <td>
                    <input type="text" name="billing_zip" id="billing_zip" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing Country :
                </td>
                <td>
                    <input type="text" name="billing_country" id="billing_country" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing Tel :
                </td>
                <td>
                    <input type="text" name="billing_tel" id="billing_tel" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Billing Email :
                </td>
                <td>
                    <input type="text" name="billing_email" id="billing_email" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    Shipping information(optional)
                </td>
            </tr>
            <tr>
                <td>
                    Shipping Name :
                </td>
                <td>
                    <input type="text" name="delivery_name" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    Shipping Address :
                </td>
                <td>
                    <input type="text" name="delivery_address" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    shipping City :
                </td>
                <td>
                    <input type="text" name="delivery_city" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    shipping State :
                </td>
                <td>
                    <input type="text" name="delivery_state" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    shipping Zip :
                </td>
                <td>
                    <input type="text" name="delivery_zip" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    shipping Country :
                </td>
                <td>
                    <input type="text" name="delivery_country" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    Shipping Tel :
                </td>
                <td>
                    <input type="text" name="delivery_tel" value="" />
                </td>
            </tr>
            <tr>
                <td>
                    Merchant Param1 :
                </td>
                <td>
                    <input type="text" name="merchant_param1" id="merchant_param1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Merchant Param2 :
                </td>
                <td>
                    <input type="text" name="merchant_param2" id="merchant_param2" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Merchant Param3 :
                </td>
                <td>
                    <input type="text" name="merchant_param3" id="merchant_param3" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Merchant Param4 :
                </td>
                <td>
                    <input type="text" name="merchant_param4" id="merchant_param4" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Merchant Param5 :
                </td>
                <td>
                    <input type="text" name="merchant_param5" id="merchant_param5" runat="server" />
                </td>
            </tr>
            
            <tr>
                <td colspan="2">
                    Payment information:
                </td>
            </tr>
            <tr>
                <td>
                    Payment Option:
                </td>
                <td>
                    <input class="payOption" type="radio" name="payment_option" value="OPTCRDC">Credit
                    Card
                    <input class="payOption" type="radio" name="payment_option" value="OPTDBCRD">Debit
                    Card
                    <br />
                    <input class="payOption" type="radio" name="payment_option" value="OPTNBK">Net Banking
                    <input class="payOption" type="radio" name="payment_option" value="OPTCASHC">Cash
                    Card
                    <br />
                    <input class="payOption" type="radio" name="payment_option" value="OPTMOBP">Mobile
                    Payments
                    <input class="payOption" type="radio" name="payment_option" value="OPTEMI">EMI
                    <input class="payOption" type="radio" name="payment_option" value="OPTWLT">Wallet
                </td>
            </tr>
            <!-- EMI section start -->
            <tr style="display: none">
                <td colspan="2">
                    <div id="emi_div" style="display: none">
                        <table border="1" width="100%">
                            <tr>
                                <td colspan="2">
                                    EMI Section
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Emi plan id:
                                </td>
                                <td>
                                    <input readonly="readonly" type="text" id="emi_plan_id" name="emi_plan_id" value="" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Emi tenure id:
                                </td>
                                <td>
                                    <input readonly="readonly" type="text" id="emi_tenure_id" name="emi_tenure_id" value="" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Pay Through
                                </td>
                                <td>
                                    <select name="emi_banks" id="emi_banks">
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div id="emi_duration" class="span12">
                                        <span class="span12 content-text emiDetails">EMI Duration</span>
                                        <table id="emi_tbl" cellpadding="0" cellspacing="0" border="1">
                                        </table>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td id="processing_fee" colspan="2">
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <!-- EMI section end -->
            <tr style="display: none">
                <td>
                    Card Type:
                </td>
                <td>
                    <input type="text" id="card_type" name="card_type" value="" readonly="readonly" />
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Card Name:
                </td>
                <td>
                    <select name="card_name" id="card_name">
                        <option value="">Select Card Name</option>
                    </select>
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Data Accepted At
                </td>
                <td>
                    <input type="text" id="data_accept" name="data_accept" readonly="readonly" />
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Card Number:
                </td>
                <td>
                    <input type="text" id="card_number" name="card_number" value="" />e.g. 4111111111111111
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Expiry Month:
                </td>
                <td>
                    <input type="text" name="expiry_month" value="" />e.g. 07
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Expiry Year:
                </td>
                <td>
                    <input type="text" name="expiry_year" value="" />e.g. 2027
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    CVV Number:
                </td>
                <td>
                    <input type="text" name="cvv_number" value="" />e.g. 328
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Issuing Bank:
                </td>
                <td>
                    <input type="text" name="issuing_bank" value="" />e.g. State Bank Of India
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Mobile Number:
                </td>
                <td>
                    <input type="text" name="mobile_number" value="" />e.g. 9770707070
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    MMID:
                </td>
                <td>
                    <input type="text" name="mm_id" value="" />e.g. 1234567
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    OTP:
                </td>
                <td>
                    <input type="text" name="otp" value="" />e.g. 123456
                </td>
            </tr>
            <tr style="display: none">
                <td>
                    Promotions:
                </td>
                <td>
                    <select name="promo_code" id="promo_code">
                        <option value="">All Promotions &amp; Offers</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    sub_account_id :
                </td>
                <td>
                    <input type="text" name="sub_account_id" id="sub_account_id" runat="server" value="TSIIC"/>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
<%--<script src="js/json.js"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
    $(function () {

        /* json object contains
             1) payOptType - Will contain payment options allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
             2) cardType - Will contain card type allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
             3) cardName - Will contain name of card. E.g. Visa, MasterCard, American Express or and bank name in case of Net banking. 
             4) status - Will help in identifying the status of the payment mode. Options may include Active or Down.
             5) dataAcceptedAt - It tell data accept at CCAvenue or Service provider
             6)error -  This parameter will enable you to troubleshoot any configuration related issues. It will provide error description.
        */
        var jsonData;
        var access_code = "AVWN79FH73AU40NWUA";//"AVHE79FG49CL98EHLC"; // shared by CCAVENUE 
        var amount = document.getElementById('myDIV');
        var currency = "INR";

        $.ajax({
            url: 'https://secure.ccavenue.com/transaction/transaction.do?command=getJsonData&access_code=' + access_code + '&currency=' + currency + '&amount=' + amount,
            dataType: 'jsonp',
            jsonp: false,
            jsonpCallback: 'processData',
            success: function (data) {
                jsonData = data;
                // processData method for reference
                processData(data);
                // get Promotion details
                $.each(jsonData, function (index, value) {
                    if (value.Promotions != undefined && value.Promotions != null) {
                        var promotionsArray = $.parseJSON(value.Promotions);
                        $.each(promotionsArray, function () {
                            console.log(this['promoId'] + " " + this['promoCardName']);
                            var promotions = "<option value=" + this['promoId'] + ">"
                                + this['promoName'] + " - " + this['promoPayOptTypeDesc'] + "-" + this['promoCardName'] + " - " + currency + " " + this['discountValue'] + "  " +
                                this['promoType'] + "</option>";
                            $("#promo_code").find("option:last").after(promotions);
                        });
                    }
                });
            },
            error: function (xhr, textStatus, errorThrown) {
                alert('An error occurred! ' + (errorThrown ? errorThrown : xhr.status));
                //console.log("Error occured");
            }
        });

        $(".payOption").click(function () {
            var paymentOption = "";
            var cardArray = "";
            var payThrough, emiPlanTr;
            var emiBanksArray, emiPlansArray;

            paymentOption = $(this).val();
            $("#card_type").val(paymentOption.replace("OPT", ""));
            $("#card_name").children().remove(); // remove old card names from old one
            $("#card_name").append("<option value=''>Select</option>");
            $("#emi_div").hide();

            //console.log(jsonData);
            $.each(jsonData, function (index, value) {
                //console.log(value);
                if (paymentOption != "OPTEMI") {
                    if (value.payOpt == paymentOption) {
                        cardArray = $.parseJSON(value[paymentOption]);
                        $.each(cardArray, function () {
                            $("#card_name").find("option:last").after("<option class='" + this['dataAcceptedAt'] + " " + this['status'] + "'  value='" + this['cardName'] + "'>" + this['cardName'] + "</option>");
                        });
                    }
                }

                if (paymentOption == "OPTEMI") {
                    if (value.payOpt == "OPTEMI") {
                        $("#emi_div").show();
                        $("#card_type").val("CRDC");
                        $("#data_accept").val("Y");
                        $("#emi_plan_id").val("");
                        $("#emi_tenure_id").val("");
                        $("span.emi_fees").hide();
                        $("#emi_banks").children().remove();
                        $("#emi_banks").append("<option value=''>Select your Bank</option>");
                        $("#emi_tbl").children().remove();

                        emiBanksArray = $.parseJSON(value.EmiBanks);
                        emiPlansArray = $.parseJSON(value.EmiPlans);
                        $.each(emiBanksArray, function () {
                            payThrough = "<option value='" + this['planId'] + "' class='" + this['BINs'] + "' id='" + this['subventionPaidBy'] + "' label='" + this['midProcesses'] + "'>" + this['gtwName'] + "</option>";
                            $("#emi_banks").append(payThrough);
                        });

                        emiPlanTr = "<tr><td>&nbsp;</td><td>EMI Plan</td><td>Monthly Installments</td><td>Total Cost</td></tr>";

                        $.each(emiPlansArray, function () {
                            emiPlanTr = emiPlanTr +
                                "<tr class='tenuremonth " + this['planId'] + "' id='" + this['tenureId'] + "' style='display: none'>" +
                                "<td> <input type='radio' name='emi_plan_radio' id='" + this['tenureMonths'] + "' value='" + this['tenureId'] + "' class='emi_plan_radio' > </td>" +
                                "<td>" + this['tenureMonths'] + "EMIs. <label class='merchant_subvention'>@ <label class='emi_processing_fee_percent'>" + this['processingFeePercent'] + "</label>&nbsp;%p.a</label>" +
                                "</td>" +
                                "<td>" + this['currency'] + "&nbsp;" + this['emiAmount'].toFixed(2) +
                                "</td>" +
                                "<td><label class='currency'>" + this['currency'] + "</label>&nbsp;" +
                                "<label class='emiTotal'>" + this['total'].toFixed(2) + "</label>" +
                                "<label class='emi_processing_fee_plan' style='display: none;'>" + this['emiProcessingFee'].toFixed(2) + "</label>" +
                                "<label class='planId' style='display: none;'>" + this['planId'] + "</label>" +
                                "</td>" +
                                "</tr>";
                        });
                        $("#emi_tbl").append(emiPlanTr);
                    }
                }
            });

        });


        $("#card_name").click(function () {
            if ($(this).find(":selected").hasClass("DOWN")) {
                alert("Selected option is currently unavailable. Select another payment option or try again later.");
            }
            if ($(this).find(":selected").hasClass("CCAvenue")) {
                $("#data_accept").val("Y");
            } else {
                $("#data_accept").val("N");
            }
        });

        // Emi section start      
        $("#emi_banks").live("change", function () {
            if ($(this).val() != "") {
                var cardsProcess = "";
                $("#emi_tbl").show();
                cardsProcess = $("#emi_banks option:selected").attr("label").split("|");
                $("#card_name").children().remove();
                $("#card_name").append("<option value=''>Select</option>");
                $.each(cardsProcess, function (index, card) {
                    $("#card_name").find("option:last").after("<option class=CCAvenue value='" + card + "' >" + card + "</option>");
                });
                $("#emi_plan_id").val($(this).val());
                $(".tenuremonth").hide();
                $("." + $(this).val() + "").show();
                $("." + $(this).val()).find("input:radio[name=emi_plan_radio]").first().attr("checked", true);
                $("." + $(this).val()).find("input:radio[name=emi_plan_radio]").first().trigger("click");

                if ($("#emi_banks option:selected").attr("id") == "Customer") {
                    $("#processing_fee").show();
                } else {
                    $("#processing_fee").hide();
                }

            } else {
                $("#emi_plan_id").val("");
                $("#emi_tenure_id").val("");
                $("#emi_tbl").hide();
            }



            $("label.emi_processing_fee_percent").each(function () {
                if ($(this).text() == 0) {
                    $(this).closest("tr").find("label.merchant_subvention").hide();
                }
            });

        });

        $(".emi_plan_radio").live("click", function () {
            var processingFee = "";
            $("#emi_tenure_id").val($(this).val());
            processingFee =
                "<span class='emi_fees' >" +
                "Processing Fee:" + $(this).closest('tr').find('label.currency').text() + "&nbsp;" +
                "<label id='processingFee'>" + $(this).closest('tr').find('label.emi_processing_fee_plan').text() +
                "</label><br/>" +
                "Processing fee will be charged only on the first EMI." +
                "</span>";
            $("#processing_fee").children().remove();
            $("#processing_fee").append(processingFee);

            // If processing fee is 0 then hiding emi_fee span
            if ($("#processingFee").text() == 0) {
                $(".emi_fees").hide();
            }

        });


        $("#card_number").focusout(function () {
			/*
			 emi_banks(select box) option class attribute contains two fields either allcards or bin no supported by that emi 
			*/
            if ($('input[name="payment_option"]:checked').val() == "OPTEMI") {
                if (!($("#emi_banks option:selected").hasClass("allcards"))) {
                    if (!$('#emi_banks option:selected').hasClass($(this).val().substring(0, 6))) {
                        alert("Selected EMI is not available for entered credit card.");
                    }
                }
            }

        });


        // Emi section end 		


        // below code for reference 

        function processData(data) {
            var paymentOptions = [];
            var creditCards = [];
            var debitCards = [];
            var netBanks = [];
            var cashCards = [];
            var mobilePayments = [];
            $.each(data, function () {
                // this.error shows if any error   	
                console.log(this.error);
                paymentOptions.push(this.payOpt);
                switch (this.payOpt) {
                    case 'OPTCRDC':
                        var jsonData = this.OPTCRDC;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            creditCards.push(this['cardName']);
                        });
                        break;
                    case 'OPTDBCRD':
                        var jsonData = this.OPTDBCRD;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            debitCards.push(this['cardName']);
                        });
                        break;
                    case 'OPTNBK':
                        var jsonData = this.OPTNBK;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            netBanks.push(this['cardName']);
                        });
                        break;

                    case 'OPTCASHC':
                        var jsonData = this.OPTCASHC;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            cashCards.push(this['cardName']);
                        });
                        break;

                    case 'OPTMOBP':
                        var jsonData = this.OPTMOBP;
                        var obj = $.parseJSON(jsonData);
                        $.each(obj, function () {
                            mobilePayments.push(this['cardName']);
                        });
                }

            });

            //console.log(creditCards);
            // console.log(debitCards);
            // console.log(netBanks);
            // console.log(cashCards);
            //  console.log(mobilePayments);

        }
    });
</script>--%>
</html>