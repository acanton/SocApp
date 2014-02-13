//
//  NewPostViewController.h
//  SocApp
//
//  Created by Alexander Canton on 2/12/14.
//
//

#import <UIKit/UIKit.h>

@interface NewPostViewController : UIViewController

@property (nonatomic, strong) UITextView *textView;

-(void)addButtonTouchHandler:(id)sender;
-(void)cancelButtonTouchHandler:(id)sender;

@end
