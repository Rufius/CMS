﻿#region License
// 
// Copyright (c) 2013, Kooboo team
// 
// Licensed under the BSD License
// See the file LICENSE.txt for details.
// 
#endregion
using Kooboo.CMS.SiteKernel.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kooboo.CMS.SiteKernel.Services
{
    public static class SiteObjectExtensions
    {
        public static IEnumerable<Site> SubSites(this Site site)
        {
            //siteService.ChildSites(site);
            return null;
        }

        public static IEnumerable<Layout> Layouts(this Site site)
        {
            //layoutService.All(site);
            return null;
        }
        public static IEnumerable<View> Views(this Site site)
        {
            return null;
        }
        public static IEnumerable<Page> Pages(this Site site)
        {
            return null;
        }
        public static IEnumerable<Label> Labels(this Site site)
        {
            return null;
        }
    }
}