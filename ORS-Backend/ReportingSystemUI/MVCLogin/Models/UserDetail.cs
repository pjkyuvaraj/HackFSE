//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCLogin.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class UserDetail
    {
        public int UserId { get; set; }
        [DisplayName("User Name")]
        [Required(AllowEmptyStrings =false, ErrorMessage ="Please enter the UserName")]
        public string UserName { get; set; }
        [DisplayName("Password")]
        [DataType(DataType.Password)]
        [Required(AllowEmptyStrings = false,ErrorMessage ="Please enter the Password")]
        public string Password { get; set; }
        public object LoginErrorMessage { get; internal set; }
    }
}
