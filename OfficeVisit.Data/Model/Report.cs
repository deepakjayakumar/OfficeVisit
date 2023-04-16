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
		public string Office_Id { get; set; }
		public string NSS_Id { get; set; }
		public string SOM_Id { get; set; }
		public string SBD_Id { get; set; }
		public DateTime Visited_Date { get; set; }

		public DateTime Last_Audit_Date { get; set; }

		public int Office_Score {get;set;}
	}
}
