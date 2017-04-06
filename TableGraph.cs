using System;
using System.Collections.Generic;
using System.Linq;

namespace FreeCode.AWSystem.Data
{
    public class TableGraph : TableInfo
    {
        public IList<ColumnInfo> Columns { get; set; }
    }
}
