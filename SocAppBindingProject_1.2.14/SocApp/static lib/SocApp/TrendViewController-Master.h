//
//  TrendViewController-Master.h
//  SocApp
//
//  Created by Alexander Canton on 10/5/13.
//
//

#import <UIKit/UIKit.h>

@interface TrendViewController_Master : UITableViewController {
    NSArray *trends;
}

- (void)fetchTrends;

@end
