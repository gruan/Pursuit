//
//  SignupControllerView.h
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//
#import <UIKit/UIKit.h>

#ifndef Pursuit_SignupControllerView_h
#define Pursuit_SignupControllerView_h

@interface SignupControllerView: UITableViewController <UITextFieldDelegate,UIActionSheetDelegate>
{
    
}
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UITextField *firstname;
@property (weak, nonatomic) IBOutlet UITextField *lastname;
- (IBAction)Done:(id)sender;
- (IBAction)Cancel:(id)sender;




@end
#endif
