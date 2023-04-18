using OfficeVisit.Data.Repository;
using OfficeVisit.Service.Services;
using System.Data.SqlClient;

var builder = WebApplication.CreateBuilder(args);

var configuration = new ConfigurationBuilder().AddJsonFile(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "appsettings.json")).Build();
IConfiguration sqlconfig = configuration.GetSection("OfficeDBConnection");
// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();
builder.Services.AddKendo();
builder.Services.AddTransient<IDatabaseRepository>(x => { return new OfficeDatabaseReporitory(sqlconfig["datasource"], sqlconfig["initialcatalog"], sqlconfig["userid"], sqlconfig["password"], sqlconfig["connectiontimeout"]); });
builder.Services.AddScoped<IReportService, BasicReportService>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
	app.UseExceptionHandler("/Home/Error");
	// The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
	app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
	name: "default",
	pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
