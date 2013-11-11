//
//  MessageComposerViewController.h
//  SocApp
//
//  Created by Alexander Canton on 10/19/13.
//
//

#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>


@interface MessageComposerViewController : UIViewController <MFMessageComposeViewControllerDelegate>

//the action which will be conntected to the Button in the xib file
-(IBAction)sendSMS :(id)sender;

@end