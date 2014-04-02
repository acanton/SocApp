//
//  AppDelegate.m
// 

#import "AppDelegate.h"
#import <Parse/Parse.h>
#import "LoginViewController.h"
#import "BlogTableViewController.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#pragma mark- UIApplicationDelegate

@implementation AppDelegate

@synthesize window = _window;

- (void)customizeAppearance
{
    // Create resizable images
    UIImage *gradientImage44 = [[UIImage imageNamed:@"gradient_textured_44"]
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    UIImage *gradientImage32 = [[UIImage imageNamed:@"gradient_textured_32"]
                                resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    
    // Set the background image for *all* UINavigationBars
    [[UINavigationBar appearance] setBackgroundImage:gradientImage44
                                       forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setBackgroundImage:gradientImage32
                                       forBarMetrics:UIBarMetricsLandscapePhone];
    
    // Customize the title text for *all* UINavigationBars
    [[UINavigationBar appearance] setTitleTextAttributes:
     [NSDictionary dictionaryWithObjectsAndKeys:
      [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0],
      NSForegroundColorAttributeName,
      [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.8],
      NSShadowAttributeName,
      [NSValue valueWithUIOffset:UIOffsetMake(0, -1)],
      NSShadowAttributeName,
      [UIFont fontWithName:@"Arial-Bold" size:0.0],
      NSFontAttributeName,
      nil]];
    [[UINavigationBar appearance] setShadowImage:[UIImage imageNamed:@"navBarShadow"]];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    [self customizeAppearance];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // ****************************************************************************
    // Fill in with your Parse credentials:
    // ****************************************************************************
    
    [Parse setApplicationId:@"your_application_id" clientKey:@"your_client_key"];
    
    
    // ****************************************************************************
    // Your Facebook application id is configured in Info.plist.
    // ****************************************************************************
    [PFFacebookUtils initializeFacebook];
    
    PFUser *user = [PFUser user];
    user.username = @"Matt";
    user.password = @"password";
    user.email = @"Matt@example.com";
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            [PFUser logInWithUsername:@"Matt" password:@"password"];
        }
    }];

    
    
    // Override point for customization after application launch.
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[LoginViewController alloc] init]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible]; */
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return [FBAppCall handleOpenURL:url
                  sourceApplication:sourceApplication
                        withSession:[PFFacebookUtils session]];
}

							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
    
    [FBAppCall handleDidBecomeActiveWithSession:[PFFacebookUtils session]];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
     */
    [[PFFacebookUtils session] close];

}

@end
