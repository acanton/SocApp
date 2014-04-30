//
//  DoubleTapCheckIn.m
//  SocApp
//
//  Created by Alexander Canton on 4/21/14.
//
//

#import "DoubleTapCheckIn.h"

@implementation DoubleTapCheckIn

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
        
        [self setBackgroundColor: [UIColor clearColor]];
        
        UITapGestureRecognizer *singleTapRecognizer = [[UITapGestureRecognizer alloc]
                initWithTarget:self action:@selector(handleTap:)];
        singleTapRecognizer.numberOfTapsRequired =1;
        singleTapRecognizer.delaysTouchesEnded = YES;
        
        UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc]
                initWithTarget:self action: @selector(handleDoubleTap)];
        doubleTapRecognizer.numberOfTapsRequired = 2;
        
        [singleTapRecognizer requireGestureRecognizerToFail:doubleTapRecognizer];
        
        [self addGestureRecognizer:singleTapRecognizer];
        [self addGestureRecognizer:doubleTapRecognizer];
        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
