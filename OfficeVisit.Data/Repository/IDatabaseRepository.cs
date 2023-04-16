using OfficeVisit.Data.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OfficeVisit.Data.Repository
{
	public interface IDatabaseRepository
	{
		Task<IList<Report>> GetReports();
	}
}
