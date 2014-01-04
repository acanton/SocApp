//
//  SelectImageViewController.h
//  SocApp
//
//  Created by Alexander Canton on 11/20/13.
//
//

#import <UIKit/UIKit.h>

@interface SelectImageViewController : UIViewController
< UIImagePickerControllerDelegate , UINavigationControllerDelegate>
{
    IBOutlet UIImageView *imageSelect;
    IBOutlet UIButton *libraryButton;
}

@property(nonatomic,retain) UIImageView *imageSelect;
@property(nonatomic,retain) UIButton *libraryButton;


-(IBAction)LibraryPicture;


@end