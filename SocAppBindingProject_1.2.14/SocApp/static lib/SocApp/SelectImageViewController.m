//
//  SelectImageViewController.m
//  SocApp
//
//  Created by Alexander Canton on 11/20/13.
//
//

#import "SelectImageViewController.h"

@implementation SelectImageViewController

@synthesize imageSelect;
@synthesize libraryButton;



- (void)dealloc
{
    
    //[takePictureButton release];
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


-(IBAction)LibraryPicture
{
    if([UIImagePickerController isSourceTypeAvailable:
        UIImagePickerControllerSourceTypePhotoLibrary])
    {
        UIImagePickerController *picker= [[UIImagePickerController alloc]init];
        picker.delegate = self;
        picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentViewController:picker animated:YES completion:nil];
        
    }
    
    
}

-(void)imagePickerController:(UIImagePickerController *)picker
      didFinishPickingImage : (UIImage *)image
                 editingInfo:(NSDictionary *)editingInfo
{
    imageSelect.image = image;
    [picker dismissModalViewControllerAnimated:YES];
}


-(void)imagePickerControllerDidCancel:(UIImagePickerController *) picker
{
    [[picker presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}




- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end