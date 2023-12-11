using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;

namespace LilMicroDocjer;

internal static class Program
{
    private static void Main()
    {
        var host = new WebHostBuilder()
            .UseKestrel()
            .Configure(app =>
            {
                app.Run(context => context.Response.WriteAsync("Hello from your microservice!"));
            })
            .Build();

        host.Run();
    }
}