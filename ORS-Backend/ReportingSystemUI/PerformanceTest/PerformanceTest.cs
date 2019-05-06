using NBench;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PerformanceTest
{
    public class PerformanceTest
    {
        [PerfBenchmark(NumberOfIterations = 10, RunMode = RunMode.Throughput, TestMode = TestMode.Test, SkipWarmups = true)]
        [ElapsedTimeAssertion(MaxTimeMilliseconds = 5000)]
        public void Benchmark_Performance_ElaspedTime()
        {
            GetAllUserList();
        }

        private void GetAllUserList()
        {
            HttpClient client = new HttpClient();
            string path = "http://localhost/ORS_api/api/user/GetAllUserDetails";
            try
            {

                var response = client.GetAsync(path);
                response.Wait();

            }
            catch
            {
                throw;
            }
        }


    }
}
