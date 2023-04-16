using OfficeVisit.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OfficeVisit.Service.Services
{
	public interface IReportService
	{

		public Task<IList<Report>> GetReportsAsync();
	}
}
