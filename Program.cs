using Ocelot.DependencyInjection;
using Ocelot.Middleware;

var builder = WebApplication.CreateBuilder(args);

// Ocelot konfigürasyon dosyasını ekle
builder.Configuration.AddJsonFile("ocelot.json", optional: false, reloadOnChange: true);

// Ocelot servislerini ekle
builder.Services.AddOcelot();

var app = builder.Build();

// Ocelot'u middleware olarak ekle (await gerekir!)
await app.UseOcelot();

// Uygulamayı başlat
app.Run();
