//
//  CheckInViewController.h
//  SocApp
//
//  Created by Alexander Canton on 2/24/14.
//
//

#import <UIKit/UIKit.h>

@class FSVenue;
@interface CheckinViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITapGestureRecognizer *DoubleTap;
@property (weak, nonatomic) IBOutlet UITapGestureRecognizer *SingleTap;

@property (strong, nonatomic) FSVenue *venue;

@end
