//
// Auto-generated from generator.cs, do not edit
//
// We keep references to objects, so warning 414 is expected

#pragma warning disable 414

using System;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.ComponentModel;
using System.Threading.Tasks;
using MonoTouch;
using MonoTouch.CoreFoundation;
using MonoTouch.CoreMedia;
using MonoTouch.CoreMotion;
using MonoTouch.Foundation;
using MonoTouch.ObjCRuntime;
using MonoTouch.CoreAnimation;
using MonoTouch.CoreLocation;
using MonoTouch.MapKit;
using MonoTouch.UIKit;
using MonoTouch.CoreGraphics;
using MonoTouch.NewsstandKit;
using MonoTouch.GLKit;
using MonoTouch.CoreVideo;
using OpenTK;

namespace SocAppBindings {
	[Register("SelectImageViewController", true)]
	public unsafe partial class SelectImageViewController : global::MonoTouch.UIKit.UIViewController {
		[CompilerGenerated]
		const string selImageSelect = "imageSelect";
		static readonly IntPtr selImageSelectHandle = Selector.GetHandle ("imageSelect");
		[CompilerGenerated]
		const string selSetImageSelect_ = "setImageSelect:";
		static readonly IntPtr selSetImageSelect_Handle = Selector.GetHandle ("setImageSelect:");
		[CompilerGenerated]
		const string selLibraryButton = "libraryButton";
		static readonly IntPtr selLibraryButtonHandle = Selector.GetHandle ("libraryButton");
		[CompilerGenerated]
		const string selSetLibraryButton_ = "setLibraryButton:";
		static readonly IntPtr selSetLibraryButton_Handle = Selector.GetHandle ("setLibraryButton:");
		[CompilerGenerated]
		const string selLibraryPicture = "LibraryPicture";
		static readonly IntPtr selLibraryPictureHandle = Selector.GetHandle ("LibraryPicture");
		
		[CompilerGenerated]
		static readonly IntPtr class_ptr = Class.GetHandle ("SelectImageViewController");
		
		public override IntPtr ClassHandle { get { return class_ptr; } }
		
		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		[Export ("init")]
		public SelectImageViewController () : base (NSObjectFlag.Empty)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
			if (IsDirectBinding) {
				Handle = MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSend (this.Handle, Selector.Init);
			} else {
				Handle = MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, Selector.Init);
			}
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		[Export ("initWithCoder:")]
		public SelectImageViewController (NSCoder coder) : base (NSObjectFlag.Empty)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
			if (IsDirectBinding) {
				Handle = MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSend_IntPtr (this.Handle, Selector.InitWithCoder, coder.Handle);
			} else {
				Handle = MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSendSuper_IntPtr (this.SuperHandle, Selector.InitWithCoder, coder.Handle);
			}
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		public SelectImageViewController (NSObjectFlag t) : base (t)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[CompilerGenerated]
		[EditorBrowsable (EditorBrowsableState.Advanced)]
		public SelectImageViewController (IntPtr handle) : base (handle)
		{
			IsDirectBinding = GetType ().Assembly == global::ApiDefinition.Messaging.this_assembly;
		}

		[Export ("LibraryPicture")]
		[CompilerGenerated]
		public virtual void LibraryPicture ()
		{
			if (IsDirectBinding) {
				MonoTouch.ObjCRuntime.Messaging.void_objc_msgSend (this.Handle, selLibraryPictureHandle);
			} else {
				MonoTouch.ObjCRuntime.Messaging.void_objc_msgSendSuper (this.SuperHandle, selLibraryPictureHandle);
			}
		}
		
		[CompilerGenerated]
		object __mt_ImageSelect_var;
		[CompilerGenerated]
		public virtual global::MonoTouch.UIKit.UIImageView ImageSelect {
			[Export ("imageSelect", ArgumentSemantic.Retain)]
			get {
				global::MonoTouch.UIKit.UIImageView ret;
				if (IsDirectBinding) {
					ret =  Runtime.GetNSObject<global::MonoTouch.UIKit.UIImageView> (MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSend (this.Handle, selImageSelectHandle));
				} else {
					ret =  Runtime.GetNSObject<global::MonoTouch.UIKit.UIImageView> (MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, selImageSelectHandle));
				}
				if (!IsNewRefcountEnabled ())
					__mt_ImageSelect_var = ret;
				return ret;
			}
			
			[Export ("setImageSelect:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				if (IsDirectBinding) {
					MonoTouch.ObjCRuntime.Messaging.void_objc_msgSend_IntPtr (this.Handle, selSetImageSelect_Handle, value.Handle);
				} else {
					MonoTouch.ObjCRuntime.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, selSetImageSelect_Handle, value.Handle);
				}
				if (!IsNewRefcountEnabled ())
					__mt_ImageSelect_var = value;
			}
		}
		
		[CompilerGenerated]
		object __mt_LibraryButton_var;
		[CompilerGenerated]
		public virtual global::MonoTouch.UIKit.UIButton LibraryButton {
			[Export ("libraryButton", ArgumentSemantic.Retain)]
			get {
				global::MonoTouch.UIKit.UIButton ret;
				if (IsDirectBinding) {
					ret =  Runtime.GetNSObject<global::MonoTouch.UIKit.UIButton> (MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSend (this.Handle, selLibraryButtonHandle));
				} else {
					ret =  Runtime.GetNSObject<global::MonoTouch.UIKit.UIButton> (MonoTouch.ObjCRuntime.Messaging.IntPtr_objc_msgSendSuper (this.SuperHandle, selLibraryButtonHandle));
				}
				if (!IsNewRefcountEnabled ())
					__mt_LibraryButton_var = ret;
				return ret;
			}
			
			[Export ("setLibraryButton:", ArgumentSemantic.Retain)]
			set {
				if (value == null)
					throw new ArgumentNullException ("value");
				if (IsDirectBinding) {
					MonoTouch.ObjCRuntime.Messaging.void_objc_msgSend_IntPtr (this.Handle, selSetLibraryButton_Handle, value.Handle);
				} else {
					MonoTouch.ObjCRuntime.Messaging.void_objc_msgSendSuper_IntPtr (this.SuperHandle, selSetLibraryButton_Handle, value.Handle);
				}
				if (!IsNewRefcountEnabled ())
					__mt_LibraryButton_var = value;
			}
		}
		
		[CompilerGenerated]
		protected override void Dispose (bool disposing)
		{
			base.Dispose (disposing);
			if (Handle == IntPtr.Zero) {
				__mt_ImageSelect_var = null;
				__mt_LibraryButton_var = null;
			}
		}
	} /* class SelectImageViewController */
}
