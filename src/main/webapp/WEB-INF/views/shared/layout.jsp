<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>
      <tiles:insertAttribute name="title" ignore="true" /> - My Spring Application</title>
   <link rel="shortcut icon" href="resources/favicon.ico">
   <link rel="stylesheet" href="resources/css/site.css">
   <link rel="stylesheet" href="resources/lib/bootstrap/dist/css/bootstrap.css">
   <!-- To collect end-user usage analytics about your application, insert the following script into each page you want to track. Place this code immediately before the closing </head> tag, and before any other scripts. Your first data will appear automatically in just a few seconds. -->
   <script type="text/javascript">
      var appInsights = window.appInsights || function (a) {
         function b(a) { c[a] = function () { var b = arguments; c.queue.push(function () { c[a].apply(c, b) }) } } var c = { config: a }, d = document, e = window; setTimeout(function () { var b = d.createElement("script"); b.src = a.url || "https://az416426.vo.msecnd.net/scripts/a/ai.0.js", d.getElementsByTagName("script")[0].parentNode.appendChild(b) }); try { c.cookie = d.cookie } catch (a) { } c.queue = []; for (var f = ["Event", "Exception", "Metric", "PageView", "Trace", "Dependency"]; f.length;)b("track" + f.pop()); if (b("setAuthenticatedUserContext"), b("clearAuthenticatedUserContext"), b("startTrackEvent"), b("stopTrackEvent"), b("startTrackPage"), b("stopTrackPage"), b("flush"), !a.disableExceptionTracking) { f = "onerror", b("_" + f); var g = e[f]; e[f] = function (a, b, d, e, h) { var i = g && g(a, b, d, e, h); return !0 !== i && c["_" + f](a, b, d, e, h), i } } return c
      }({
         instrumentationKey: "${instrumentationKey}"
      });

      window.appInsights = appInsights, appInsights.queue && 0 === appInsights.queue.length && appInsights.trackPageView();
   </script>
</head>

<body>
   <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
         <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </button>
            <a href="./" class="navbar-brand">
               SpringMVC
            </a>
         </div>
         <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               <li><a href="./">Home</a></li>
               <li><a href="./about">About</a></li>
               <li><a href="./contact">Contact</a></li>
            </ul>
         </div>
      </div>
   </div>
   <div class="container body-content">
      <tiles:insertAttribute name="body" />
      <hr />
      <footer>
         <p>&copy; 2016 -
            SpringMVC
         </p>
      </footer>
   </div>

   <script src="resources/lib/jquery/dist/jquery.js"></script>
   <script src="resources/lib/bootstrap/dist/js/bootstrap.js"></script>
   <script src="resources/js/site.js"></script>
</body>

</html>