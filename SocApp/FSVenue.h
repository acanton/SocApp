//
//  FSVenue.h
//  SocApp
//
//  Created by Alexander Canton on 2/24/14.
//
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface FSLocation : NSObject {
    CLLocationCoordinate2D _coordinate;
}

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic,strong)NSNumber *distance;
@property (nonatomic,strong)NSString *address;

@end


@interface FSVenue : NSObject<MKAnnotation>

@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *venueId;
@property (nonatomic,strong)FSLocation *location;

@end