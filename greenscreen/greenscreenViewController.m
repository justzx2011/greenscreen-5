//
//  greenscreenViewController.m
//  greenscreen
//
//  Created by Peter Hering on 6/8/13.
//  Copyright (c) 2013 Peter Hering. All rights reserved.
//

#import "greenscreenViewController.h"

@interface greenscreenViewController ()
@property (nonatomic, retain) CameraVC *cameraVC;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation greenscreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[[CameraVC alloc] initWithNibName:@"CameraVC" bundle:nil];
    
    self.cameraVC.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showImagePicker:(UIImagePickerControllerSourceType)sourceType
{
    if (self.imageView.isAnimating)
        [self.imageView stopAnimating];
	
    //if (self.capturedImages.count > 0)
    //    [self.capturedImages removeAllObjects];
    
    if ([UIImagePickerController isSourceTypeAvailable:sourceType])
    {
        [self.cameraVC setupImagePicker:sourceType];
        [self presentModalViewController:self.cameraVC.imagePickerController animated:YES];
    }
}
- (IBAction)cameraAcrion:(UIButton *)sender
{
    [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
}


@end
