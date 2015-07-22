<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="Christoc.Modules.TestDb.View" %>
<h3>Db Test</h3>
<asp:Label runat="server" ID="label1"></asp:Label>
<asp:Label runat="server" ID="label2"></asp:Label>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript">
    var formData = { name: "ravi", age: "31" };
    $(document).ready(function () {
        $.ajax({
            type: 'GET',
            url: 'http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?',
            success: function (data) {
                $.each(data.item, function (i, item) {
                    $("< img/>").attr("src", item.media.m).appendTo("#flickrapi-results");
                    if (i == 10) return false;
                }
                )
            }
        });
    });



</script>

<asp:Button ID="btnHelloWorld" runat="server" Text="Get Hello World" OnClientClick="getHelloWorld(); return false;" />
<br />
<br />
<asp:Button ID="btnGoodbyeWorld" runat="server" Text="Post Goodbye World" OnClientClick="postGoodbyeWorld(); return false;" />
 <input type="text" id="t"></input>
<script type="text/javascript">

   // var sf = $.ServicesFramework(<%= ModuleId %>);
 //   $('input').val = sf;
 //   var exampleControllerPath = sf.getServiceRoot('DataExchange') + 'Example/';
    var name = document.getElementById('label2').value;
    function getHelloWorld() {
        try {
            $.ajax({
                type: "GET",
                contentType: "application/json;charset=utf-8",
                url: 'http://localhost:90/DesktopModules/TestDb/API/Example/HelloWorld',
             //   beforeSend: sf.setModuleHeaders,
                data: [],
                success: function (result) {
                    alert(result);
                },
                error: function (xhr, status, error) {
                    alert(xhr.responseText);
                }
            });
        } catch (e) {
            //Shouldn't do this but it's just for testing
            alert(e.stack);
        }
    };

    function postGoodbyeWorld() {
        try {
            $.ajax({
                type: "POST",
                cache: false,
                url: 'http://localhost:90/DesktopModules/TestDb/API/Example/GoodbyeWorld',
           //     beforeSend: sf.setModuleHeaders,
                data: ({ goodbye: true , name1: 'aTTT'}),
                success: function (result) {
                    alert(result);
                },
                error: function (xhr, status, error) {
                    alert(xhr.responseText);
                }
            });
        } catch (e) {
            //Shouldn't do this but it's just for testing
            alert(e.stack);
        }
    };
</script>