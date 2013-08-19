//
//  AWIconAnnotationView.m
//  Easy Custom Map Icons
//
//  Created by Alek Åström on 2011-08-12.
//  Copyright 2011 Apps & Wonders. No rights reserved.
//

#import "StopAnnotationView.h"

@implementation StopAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        // Compensate frame a bit so everything's aligned
        //        [self setCenterOffset:CGPointMake(-9, -3)];
        //        [self setCalloutOffset:CGPointMake(-2, 3)];
        //
        //        // Add the pin icon
        //        iconView = [[UIImageView alloc] initWithFrame:CGRectMake(8, 0, 32, 37)];
        
        
        iconView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 8, 24 , 24)];
        
        
        [self addSubview:iconView];
    }
    
    return self;
}

- (void)setAnnotation:(id<MKAnnotation>)annotation {
    [super setAnnotation:annotation];

    icon = [UIImage imageNamed:@"icon_stop.png"];
    [iconView setImage:icon];
}

/** Override to make sure shadow image is always set
 */
- (void)setImage:(UIImage *)image {
    //    [super setImage:[UIImage imageNamed:@"pin_shadow.png"]];
    [super setImage:nil];
    //    [super setImage:[UIImage imageNamed:@"icon_bus shadow.png"]];
}



@end
