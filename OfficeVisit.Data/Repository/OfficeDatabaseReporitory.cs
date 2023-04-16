using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using OfficeVisit.Data.Model;
using System.Data;
using System.ComponentModel;
using System.Reflection;

namespace OfficeVisit.Data.Repository
{
	public class OfficeDatabaseReporitory : IDatabaseRepository
	{

		private string datasource { get; set; }
		public string initialcatalog { get; set; }
		public string userid { get; set; }
		public string password { get; set; }
		public string connectiontimeout { get; set; }

		public OfficeDatabaseReporitory(string datasource, string initialcatalog, string userid, string password, string connectiontimeout)
		{
			this.datasource = datasource;
			this.initialcatalog = initialcatalog;
			this.userid = userid;
			this.password = password;
			this.connectiontimeout = connectiontimeout;
		}

		private Task<SqlConnection> GetConnection()
		{
			SqlConnection connection = new SqlConnection();
			connection.ConnectionString = "Data Source=" + datasource + ";Initial Catalog=" + initialcatalog + ";Uid=" + userid + ";Pwd=" + password + ";Connection TImeout=" + connectiontimeout + ";Trusted_Connection=True;";
			return Task.FromResult<SqlConnection>(connection);
		}


		public async Task<IList<Report>> GetReports()
		{
			SqlConnection sqlConnection = await GetConnection();
			SqlDataReader sqlDataReader = null;
			DataTable dt = new DataTable();
			IList<Report> reportList = new List<Report>();
			try
			{
				await sqlConnection.OpenAsync();
				using(SqlCommand cmd = new SqlCommand("usp_getReports", sqlConnection))
				{
					cmd.CommandType = CommandType.StoredProcedure;

					cmd.ExecuteNonQuery();
					sqlDataReader = cmd.ExecuteReader();
					reportList = DataReaderMapToList<Report>(sqlDataReader);

				}
				await sqlConnection.CloseAsync();
				return reportList;
			}
			catch (Exception ex)
			{
				return reportList;
			}
		}

		public static List<T> DataReaderMapToList<T>(IDataReader dr)
		{
			List<T> list = new List<T>();
			T obj = default(T);
			while (dr.Read())
			{
				obj = Activator.CreateInstance<T>();
				foreach (PropertyInfo prop in obj.GetType().GetProperties())
				{
					if (!object.Equals(dr[prop.Name], DBNull.Value))
					{
						prop.SetValue(obj, dr[prop.Name], null);
					}
				}
				list.Add(obj);
			}
			return list;
		}



	}
}
