using Microsoft.AspNetCore.Mvc;
using OfficeVisit.Service.Services;
using OfficeVisit.ViewModels;
using System.Security.Cryptography.Xml;

namespace OfficeVisit.Controllers
{
	public class ReportController : Controller
	{
		private readonly IReportService _reportService;

		public ReportController(IReportService reportService)
		{
			_reportService = reportService;
		}

		public async Task<IActionResult> Index()
		{
			ReportViewModel reportViewModel = new ReportViewModel();
			reportViewModel.Reports = await _reportService.GetReportsAsync();
			return View(reportViewModel);
		}
	}
}
