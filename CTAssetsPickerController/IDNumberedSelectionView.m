//
//  IDNumberedSelectionView.m
//  CTAssetsPickerDemo
//
//  Created by Adriaan Stellingwerff on 5/08/2015.
//  Copyright (c) 2015 Clement T. All rights reserved.
//

#import "IDNumberedSelectionView.h"

@interface IDNumberedSelectionView ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation IDNumberedSelectionView


- (instancetype)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 22, 22)];
    if(self){
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.backgroundColor = [UIColor clearColor];
        _label.textColor = [UIColor blackColor];
        _label.font = [UIFont fontWithName:@"Swiss721BT-BoldCondensed" size:16.0f];
        self.backgroundColor = [UIColor colorWithRed:250/255.0f green:236/255.0f blue:4/255.0f alpha:1.0f];
        
        [self addSubview:_label];
        
        self.layer.cornerRadius = 0.5 * CGRectGetWidth(self.frame);
        
    }
    return self;
}

+ (BOOL)requiresConstraintBasedLayout{
    return YES;
}

- (CGSize)intrinsicContentSize
{
    return CGSizeMake(22, 22);
}

- (void)updateWithNumber:(NSInteger)number
{
    self.label.text = [NSString stringWithFormat:@"%li", number];
}

@end
