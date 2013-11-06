//
//  SelectImageViewController.h
//  SelectImage
//
//  Created by Chakra on 08/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
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
