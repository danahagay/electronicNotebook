<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sheet.aspx.cs" Inherits="Sheet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>גליון</title>
    <link href="Styles/StyleSheetPage.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">        var addthis_config = { "data_track_addressbar": true };</script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-531b9b3c6d138d16"></script>
    <link href="jquery-notebook-master/style.css" rel="stylesheet" type="text/css" />
    <link href="jquery-notebook-master/src/js/jquery.notebook.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="jquery-notebook-master/src/js/libs/jquery-1.10.2.min.js"></script>
    <script src="jquery-notebook-master/src/js/jquery.notebook.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.my-editor').notebook();
        });
    </script>
    <script type="text/javascript">

        $.fn.notebook.defaults = {
            autoFocus: false,
            placeholder: 'התחל להקליד כאן...',
            mode: 'multiline', // multiline or inline
            modifiers: ['bold', 'italic', 'underline', 'h1', 'h2', 'ol', 'ul', 'anchor']
        };
    </script>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-46641093-3', 'raphaelcruzeiro.github.io');
        ga('send', 'pageview');
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id='outer-wrapper'>
            <div id='wrap2'>
                <!-- skip links for text browsers -->
                <div id='header-wrapper'>
                </div>
                <!-- Menu Start -->
                <div class='menu'>
                    <ul>
                        <li><a href='Detail2.aspx'>עדכון פרופיל</a></li>
                        <li><a href='Courses.aspx'>קורסים</a></li>
                        <li><a href='#'>ראשי</a></li>
                    </ul>
                   <%-- <div class='search'>
                        <form action='/search' method='get'>
                        <fieldset>
                            <input name='q' type='text' value='' />
                            <button type='submit'>
                                חפש</button>
                        </fieldset>
                        </form>
                    </div>--%>
                </div>
                <!-- Menu End -->
                <div class='container'>
                    <div id='content-wrapper'>
                        <div id='main-wrapper'>
                        </div>
                        <div class='clear' />
                        <h4 style="margin-right: 330px; font-family: shmuel; font-size: xx-large; font-weight: bold;">
                            ______ זהו סיכום מקורס
                        </h4>
                        <div class="my-editor" style="height: 400px; width: 500px; margin-left: 52px; margin-top: 28px;
                            direction: rtl; position: relative; font-family: shmuel; font-size: large;">
                        </div>
                        <script src='http://www.google.com/jsapi' type='text/javascript' />
                        <script type='text/javascript'>
      google.load(&quot;annotations&quot;, &quot;1&quot;, {&quot;locale&quot;: &quot;<data:top.languageCode/>&quot;});
      function initialize() {
        google.annotations.setApplicationId(<data:top.blogspotReviews/>);
        google.annotations.createAll();
        google.annotations.fetch();
      }
      google.setOnLoadCallback(initialize);
                        </script>
                        <!-- end content-wrapper -->
                    </div>
                    <!--Start Footer-->
                    <div class='footer'>
                        <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
                            <a class="addthis_button_preferred_1"></a><a class="addthis_button_preferred_2">
                            </a><a class="addthis_button_preferred_3"></a><a class="addthis_button_preferred_4">
                            </a><a class="addthis_button_compact"></a><a class="addthis_counter addthis_bubble_style">
                            </a>
                        </div>
                    </div>
                    <!--End Footer-->
                </div>
            </div>
            <!-- end outer-wrapper -->
            <script src='http://sliderpagenav.googlecode.com/files/paginator3000.js' type='text/javascript' />
            <script type='text/javascript'>
var home_page=&quot;/&quot;;
var urlactivepage=location.href;
var postperpage=7;
var numshowpage=10;
            </script>
            <script src='http://sliderpagenav.googlecode.com/files/Nav-Templates.js' type='text/javascript' />
        </div>
    </form>
</body>
</html>
