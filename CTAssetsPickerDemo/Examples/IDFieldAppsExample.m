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
        
        // set default album (Camera Roll)
        _picker.defaultAssetCollection = PHAssetCollectionSubtypeSmartAlbumVideos;
        
        // to present picker as a form sheet in iPad
        _picker.modalPresentationStyle = UIModalPresentationFormSheet;
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
