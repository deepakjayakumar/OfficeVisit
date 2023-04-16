using Microsoft.AspNetCore.Mvc;
using OfficeVisit.Models;
using System.Diagnostics;
using OfficeVisit.Data;
using OfficeVisit.Data.Model;
using OfficeVisit.Data.Repository;
using OfficeVisit.Service.Services;

namespace OfficeVisit.Controllers
{
	public class HomeController : Controller
	{
		private readonly ILogger<HomeController> _logger;
		private readonly IReportService _reportService;

		public HomeController(ILogger<HomeController> logger, IReportService reportService)
		{
			_logger = logger;
			_reportService = reportService;
		}

		public IActionResult Index()
		{
			return RedirectToAction("Index","Report");
			//IList<Report> reportList = new List<Report>();
			//reportList = await _reportService.GetReportsAsync();
			//return View();
		}

		public IActionResult Privacy()
		{
			return View();
		}

		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}