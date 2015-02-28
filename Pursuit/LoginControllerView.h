//
//  ViewController.h
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogControllerView : UIViewController <UITextFieldDelegate>
{
    BOOL checkboxSelected;
    IBOutlet UIButton *checkboxButton;
}
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)backgroudtap:(id)sender;
-(IBAction)signinClicked:(id)sender;
- (IBAction)checkboxButton:(id)sender;

@end

