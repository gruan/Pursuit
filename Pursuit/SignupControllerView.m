//
//  SignupControllerView.m
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//
#import "SignupControllerView.h"
#import <Parse/Parse.h>
#import <Foundation/Foundation.h>
#import "Users.h"
@interface SignupControllerView()

@end

@implementation SignupControllerView
@synthesize username,password,birthday,gender,phone,Location,SignUser;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (IBAction)Next:(id)sender {
    PFUser *user = [PFUser user];
    user.username = username.text;
    user.password = password.text;
    // other fields can be set just like with PFObject
    user[@"Firstname"] = @"";
    user[@"Lastname"] = @"";
    user[@"GPA"]=@"";
    user[@"Company"]=@"";
    user[@"Years"]=@"";
    user[@"Birthday"]=birthday.text;
    user[@"Gender"]=gender.text;
    user[@"Skill1"]=@"";
    user[@"Skill2"]=@"";
    user[@"Skill3"]=@"";
    user[@"Phone"]=phone.text;
    user[@"Major"]=@"";
    user[@"School"]=@"";
    user[@"Degree"]=@"";
    user[@"Location"]=Location.text;
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
@end
