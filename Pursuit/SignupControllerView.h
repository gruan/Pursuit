//
//  SignupControllerView.h
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "Users.h"
#import <Parse/Parse.h>

#ifndef Pursuit_SignupControllerView_h
#define Pursuit_SignupControllerView_h

@interface SignupControllerView: UITableViewController <UITextFieldDelegate,UIActionSheetDelegate>
{
    
}
@property (strong, nonatomic) Users *SignUser;

@property (strong, nonatomic) IBOutlet UITextField *username;
@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *birthday;
@property (strong, nonatomic) IBOutlet UITextField *gender;
@property (strong, nonatomic) IBOutlet UITextField *phone;
@property (strong, nonatomic) IBOutlet UITextField *Location;


- (IBAction)Cancel:(id)sender;




@end
#endif
