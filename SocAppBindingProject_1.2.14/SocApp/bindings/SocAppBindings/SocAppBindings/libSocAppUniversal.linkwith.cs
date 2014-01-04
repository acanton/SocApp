using System;
using MonoTouch.ObjCRuntime;

[assembly: LinkWith ("libSocAppUniversal.a", LinkTarget.ArmV7 | LinkTarget.ArmV7s | LinkTarget.Simulator, Frameworks = "Foundation CoreLocation MessageUI Twitter UIKit CoreGraphics AudioToolbox", ForceLoad = true)]
