using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Android.Support.V4.App;
using Android.Widget;

namespace WiseERP
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        private string Username, Password;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            Button btnlogin = FindViewById<Button>(Resource.Id.btnlogin);

            btnlogin.Click += (sender, e) =>
            {
                var user = FindViewById<EditText>(Resource.Id.txtusername);
                var pwd = FindViewById<EditText>(Resource.Id.txtpassword);
                Username = user.Text;
                Password = pwd.Text;
                if (Username.Equals("admin") && Password.Equals("123"))
                {
                    Toast.MakeText(this, "登录成功", ToastLength.Long).Show();
                }
                else
                {
                    Toast.MakeText(this, "账号或密码错误", ToastLength.Long).Show();
                }
            };
        }
	}
}
