using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OfficeVisit.Data.Model
{
	public class Report
	{
		public string OfficeId { get; set; }
		public string NSSId { get; set; }
		public string SOMId { get; set; }
		public string SBDId { get; set; }
		public DateTime VisitedDate { get; set; }

		public DateTime LastAuditDate { get; set; }

		public int OfficeScore {get;set;}
	}
}
