//
//  IDFieldAppsExample.m
//  CTAssetsPickerDemo
//
//  Created by Adriaan Stellingwerff on 5/08/2015.
//  Copyright (c) 2015 Clement T. All rights reserved.
//

#import "IDFieldAppsExample.h"

@interface IDFieldAppsExample () <CTAssetsPickerControllerDelegate>

@end

@implementation IDFieldAppsExample

- (instancetype)init
{
    self = [super init];
    if(self){
        self.picker = [[CTAssetsPickerController alloc] init];
        
        // set delegate
        _picker.delegate = self;
        _picker.alwaysEnableDoneButton = YES;
        
        // set default album (Camera Roll)
        _picker.defaultAssetCollection = PHAssetCollectionSubtypeSmartAlbumVideos;
        
        // to present picker as a form sheet in iPad
        _picker.modalPresentationStyle = UIModalPresentationFormSheet;
        
        // Navigation Bar apperance
        UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:[CTAssetsPickerController class], nil];
        
        // set nav bar style to black to force light content status bar style
        navBar.barStyle = UIBarStyleBlack;
        
        // bar tint color
        navBar.barTintColor = [UIColor blackColor];

        // tint color
        navBar.tintColor = [UIColor colorWithRed:250/255.0f green:236/255.0f blue:4/255.0f alpha:1];
    
        // title
        UIFont *font = [UIFont fontWithName:@"Swiss721BT-BoldCondensed" size:19.0f];
        navBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor colorWithRed:250/255.0f green:236/255.0f blue:4/255.0f alpha:1], NSFontAttributeName : font};
    }
    return self;
}

- (void)dealloc
{
    
}

#pragma mark CTAssetsPickerControllerDelegate methods

- (void)assetsPickerController:(CTAssetsPickerController *)picker didFinishPickingAssets:(NSArray *)assets
{
    NSLog(@"got %li assets", [assets count]);
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)assetsPickerControllerDidCancel:(CTAssetsPickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
