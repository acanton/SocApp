//
//  FSVenue.m
//  SocApp
//
//  Created by Alexander Canton on 2/24/14.
//
//

#import "FSVenue.h"


@implementation FSLocation


@end

@implementation FSVenue
- (id)init {
    self = [super init];
    if (self) {
        self.location = [[FSLocation alloc]init];
    }
    return self;
}

- (CLLocationCoordinate2D)coordinate {
    return self.location.coordinate;
}

- (NSString *)title {
    return self.name;
}
@end
