using OfficeVisit.Data.Model;
using OfficeVisit.Data.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OfficeVisit.Service.Services
{
	public class BasicReportService : IReportService
	{
		private readonly IDatabaseRepository databaseRepository;

		public BasicReportService(IDatabaseRepository databaseRepository)
		{
			this.databaseRepository = databaseRepository;
		}

		public async Task<IList<Report>> GetReportsAsync()
		{
			IList<Report> reportList = await databaseRepository.GetReports();
			return reportList;
			
		}
	}
}
