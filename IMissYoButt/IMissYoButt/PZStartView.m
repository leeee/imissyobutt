//
//  PZStartView.m
//  IMissYoButt
//
//  Created by Le Wei on 3/26/13.
//  Copyright (c) 2013 EZPZ. All rights reserved.
//

#import "PZStartView.h"

@implementation PZStartView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = [self bounds];
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;

    NSString *titleText = @"I miss yo butt.";
    NSString *subtitleText = @"Helping you unmiss butts since 2013.";
    UIFont *titleFont = [UIFont boldSystemFontOfSize:28];
    UIFont *subtitleFont = [UIFont boldSystemFontOfSize:20];

    CGRect titleTextRect;
    titleTextRect.size = [titleText sizeWithFont:titleFont];
    titleTextRect.origin.x = center.x - titleTextRect.size.width/2.0;
    titleTextRect.origin.y = center.y/2 - titleTextRect.size.height/2.0;
    
    CGRect subtitleTextRect;
    // This is wrong i don't know why
    //    subtitleTextRect.size = [subtitleText sizeWithFont:subtitleFont forWidth:bounds.size.width - 20 lineBreakMode:NSLineBreakByWordWrapping];
    subtitleTextRect.size = CGSizeMake(245, 50);
    subtitleTextRect.origin.x = center.x - subtitleTextRect.size.width/2.0;
    subtitleTextRect.origin.y = titleTextRect.origin.y + titleTextRect.size.height + 15;

    [[UIColor blackColor] setFill];
 
    [titleText drawInRect:titleTextRect withFont:titleFont];
    [subtitleText drawInRect:subtitleTextRect withFont:subtitleFont lineBreakMode:NSLineBreakByWordWrapping];

    CGRect buttonFrame = CGRectMake(center.x - 80.0, center.y * 1.5, 160.0, 40.0);
    UIButton *addPeopleButton =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    addPeopleButton.frame = buttonFrame;
    [addPeopleButton addTarget:self action:NULL forControlEvents:UIControlEventTouchDown];
    [addPeopleButton setTitle:@"Add People" forState:UIControlStateNormal];
    [addPeopleButton setBackgroundColor:[UIColor clearColor]];
    [self addSubview:addPeopleButton];
}

@end
