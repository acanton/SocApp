//
//  RootController.h
//  SocApp
//
//  Created by Alexander Canton on 11/19/13.
//
//

#import <UIKit/UIKit.h>

@interface RootController : UIViewController<UITableViewDataSource, UITableViewDelegate> // (1)

- (id)initWithViewControllers:(NSArray *)viewControllers andMenuTitles:(NSArray *)titles; // (2)

@end