using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DotNetNuke.Web.Api;

namespace Christoc.Modules.TestDb.Services
{
    public class RouterMapper : IServiceRouteMapper
    {
        public void RegisterRoutes(IMapRoute mapRouteManager)
        {
            mapRouteManager.MapHttpRoute(
            "TestDb",
            "default",
            "{controller}/{action}",
            new string[] { "Christoc.Modules.TestDb.Controller" });
        }
    }
}