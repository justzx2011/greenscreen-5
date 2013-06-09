//
//  CameraVC.h
//  greenscreen
//
//  Created by Peter Hering on 6/9/13.
//  Copyright (c) 2013 Peter Hering. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CameraVCDelegate;

@interface CameraVC : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    id <CameraVCDelegate> delegate;
}
@property (nonatomic, retain) UIImagePickerController *imagePickerController;
@property (nonatomic, assign) id <CameraVCDelegate> delegate;

- (void)setupImagePicker:(UIImagePickerControllerSourceType)sourceType;

@end

@protocol OverlayViewControllerDelegate
- (void)didTakePicture:(UIImage *)picture;
- (void)didFinishWithCamera;
@end