using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GestionRestaurant.Startup))]
namespace GestionRestaurant
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
