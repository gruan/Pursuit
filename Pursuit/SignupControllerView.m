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
@interface SignupControllerView()

@end

@implementation SignupControllerView
@synthesize username,password,firstname,lastname;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Done:(id)sender {
    [self SignUpPursuit];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (IBAction)Cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}
- (void)SignUpPursuit {
    PFUser *user = [PFUser user];
    user.username = username.text;
    user.password = password.text;
    // other fields can be set just like with PFObject
    user[@"Firstname"] = firstname.text;
    user[@"Lastname"] = lastname.text;
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];
}
@end
