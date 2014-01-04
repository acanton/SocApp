using System;
using System.Drawing;
using MonoTouch.ObjCRuntime;
using MonoTouch.Foundation;
using MonoTouch.UIKit;

namespace SocAppBindings
{
	[BaseType (typeof (UIResponder))]
	public partial interface AppDelegate
	{

		[Export ("window", ArgumentSemantic.Retain)]
		UIWindow Window { get; set; }
	}

	[BaseType (typeof (UITableViewController))]
	public partial interface LoginTableViewController 
	{

		[Export ("dismissKeyboard:")]
		void DismissKeyboard (UITextField sender);
	}

	[BaseType (typeof (UIViewController))]
	public partial interface RootController
	{

		[Export ("initWithViewControllers:andMenuTitles:")]
		IntPtr Constructor (NSObject [] viewControllers, NSObject [] titles);
	}

	[BaseType (typeof (UIViewController))]
	public partial interface SelectImageViewController 
	{

		[Export ("imageSelect", ArgumentSemantic.Retain)]
		UIImageView ImageSelect { get; set; }

		[Export ("libraryButton", ArgumentSemantic.Retain)]
		UIButton LibraryButton { get; set; }

		[Export ("LibraryPicture")]
		void LibraryPicture ();
	}

	[BaseType (typeof (UITableViewController))]
	public partial interface TrendViewController_Master 
	{

		[Export ("fetchTrends")]
		void FetchTrends ();
	}

}

