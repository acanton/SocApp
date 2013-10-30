//
//  TrendViewController-Master.m
//  SocApp
//
//  Created by Alexander Canton on 10/5/13.
//
//

#import "TrendViewController-Master.h"
#import "TrendViewController-Detail.h"

@interface TrendViewController_Master ()

@end

@implementation TrendViewController_Master

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self fetchTrends];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)fetchTrends
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData* data = [NSData dataWithContentsOfURL:
                        [NSURL URLWithString: @"https://api.twitter.com/1/statuses/public_timeline.json"]];
        
        NSError* error;
        
        trends = [NSJSONSerialization JSONObjectWithData:data
                                                 options:kNilOptions
                                                   error:&error];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    });
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return trends.count;
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showTrend"]) {
        
        NSInteger row = [[self tableView].indexPathForSelectedRow row];
        //NSDictionary *trend = [trends objectAtIndex:row];
        
        //TrendViewController_Detail *detailController = segue.destinationViewController;
        //detailController.detailItem = trends;
    }
}

/*- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TweetCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSDictionary *trends = [trends objectAtIndex:indexPath.row];
    NSString *text = [trends objectForKey:@"text"];
    NSString *name = [[trends objectForKey:@"user"] objectForKey:@"name"];
    
    cell.textLabel.text = text;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"by %@", name];
    
    return cell;
}
*/




@end
