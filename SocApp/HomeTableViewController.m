//
//  HomeTableViewController.m
//  SocApp
//
//  Created by Kamal Ibrahim
//
//

#import "HomeTableViewController.h"
#import "VenueObject.h"
@interface HomeTableViewController ()

@property NSMutableArray *GlobalVenues;
@property NSMutableArray *NearbyVenues;
@property (strong, nonatomic) IBOutlet UIImageView *ProfilePic;
@property (strong, nonatomic) IBOutlet UILabel *UserName;
@property (strong, nonatomic) IBOutlet UILabel *LastKnowCheckin;
//Top Venues Globally
@property (strong, nonatomic) IBOutlet UITableViewCell *trenVen1;
@property (strong, nonatomic) IBOutlet UITableViewCell *trenVen2;
@property (strong, nonatomic) IBOutlet UITableViewCell *trenVen3;
//Close Venues sorted by popularity
@property (strong, nonatomic) IBOutlet UITableViewCell *closeVen1;
@property (strong, nonatomic) IBOutlet UITableViewCell *closeVen2;
@property (strong, nonatomic) IBOutlet UITableViewCell *closeVen3;

@end

@implementation HomeTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.GlobalVenues = [[NSMutableArray alloc] init];
    self.NearbyVenues = [[NSMutableArray alloc] init];
    [self LoadTestData];

}

-(void)LoadTestData
{
    
    //Load test data since we have no data source yet
    
    //Load test venue data
    VenueObject *obj1 = [[VenueObject alloc] init];
    obj1.VenueName = @"Global Venue 1";
    [self.GlobalVenues addObject:obj1];
    self.trenVen1.textLabel.text = obj1.VenueName;

    VenueObject *obj2 = [[VenueObject alloc] init];
    obj2.VenueName = @"Global Venue 2";
    [self.GlobalVenues addObject:obj2];
    self.trenVen2.textLabel.text = obj2.VenueName;


    VenueObject *obj3 = [[VenueObject alloc] init];
    obj3.VenueName = @"Global Venue 3";
    [self.GlobalVenues addObject:obj3];
    self.trenVen3.textLabel.text = obj3.VenueName;

    
    VenueObject *obj4 = [[VenueObject alloc] init];
    obj4.VenueName = @"Nearby Venue 1";
    [self.NearbyVenues addObject:obj4];
    self.closeVen1.textLabel.text = obj4.VenueName;

    
    VenueObject *obj5 = [[VenueObject alloc] init];
    obj5.VenueName = @"Nearby Venue 2";
    [self.NearbyVenues addObject:obj5];
    self.closeVen2.textLabel.text = obj5.VenueName;

    VenueObject *obj6 = [[VenueObject alloc] init];
    obj6.VenueName = @"Nearby Venue 3";
    [self.NearbyVenues addObject:obj6];
    self.closeVen3.textLabel.text = obj6.VenueName;

    self.ProfilePic.image = [UIImage imageNamed:@"testimage@2x.png"];
    self.UserName.text = @"John Doe";
    self.LastKnowCheckin.text = @"You were at Bogies Bar";

    
    //Load profile glimpse
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20.0;
}

@end
