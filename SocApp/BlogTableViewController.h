//
//  BlogTableViewController.h
//  SocApp
//
//  Created by Alexander Canton on 2/12/14.
//
//

#import <UIKit/UIKit.h>

@interface BlogTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *postArray;

-(void)addPostButtonHandler:(id)sender;
-(void)refreshButtonHandler:(id)sender;

@end
