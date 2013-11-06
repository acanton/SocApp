//
//  LoginTableViewController.m
//  
//

#import "LoginTableViewController.h"

@interface LoginTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *UIEmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *UIPasswordTextField;

@end

@implementation LoginTableViewController
@synthesize UIEmailTextField;
@synthesize UIPasswordTextField;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [self setUIEmailTextField:nil];
    [self setUIPasswordTextField:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - barButton Outlet

-(IBAction)dismissKeyboard:(UITextField *)sender
{
    [sender resignFirstResponder];
}

- (IBAction)loginButtonPressed:(UIBarButtonItem *)sender {
    NSLog(@"Log In button was pressed!");
}

@end

