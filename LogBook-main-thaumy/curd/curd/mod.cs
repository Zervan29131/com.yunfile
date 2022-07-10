using System;
using System.Collections.Generic;
using WaterLibrary.Utils;


namespace mod
{
    public class LogBook
    {
        public List<LogPage> pages;
    }
    public class LogPage
    {
        private string pageName;
        public LogPage(string pageName)
        {
            this.pageName = pageName;
        }

        public string NewLog(string logName)
        {

            var UUID = MathH.GenerateUUID("N");
            return UUID;
        }
        public void DelLog(string logUUID)
        {

        }
        public void FinishLog(string logUUID)
        {

        }
    }
    public class Log
    {
        public string name;
        public string UUID;
        public string content;
        public DateTime createTime;
        public DateTime finishTime;
        public DateTime deleteTime;
        public List<Step> steps;
    }
    public class Step
    {
        public string content;
    }
}

