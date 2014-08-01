﻿#region License
// 
// Copyright (c) 2013, Kooboo team
// 
// Licensed under the BSD License
// See the file LICENSE.txt for details.
// 
#endregion
using Kooboo.CMS.Membership.Models;
using Kooboo.CMS.Web2.Grid2;
using Kooboo.CMS.Web2.Models;
using Kooboo.Common.ComponentModel;
using Kooboo.Common.Web.Grid.Design;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;

namespace Kooboo.CMS.Web2.Areas.Membership.Models
{
    [MetadataFor(typeof(MembershipGroup))]
    [Grid(Checkable = true, IdProperty = "UUID")]
    public class MembershipGroup_Metadata
    {
        [GridColumn(Order = 1, GridColumnType = typeof(SortableGridColumn))]
        [RemoteEx("IsNameAvailable", "MembershipGroup", RouteFields = "MembershipName")]
        [Required(ErrorMessage = "Required")]
        public virtual string Name { get; set; }
    }
}