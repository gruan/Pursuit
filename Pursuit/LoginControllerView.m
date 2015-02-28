//
//  ViewController.m
//  Pursuit
//
//  Created by James Lee on 2/28/15.
//  Copyright (c) 2015 TeamGeorgie. All rights reserved.
//
#import <Parse/Parse.h>
#import "LoginControllerView.h"
#import "SignupControllerView.h"
@interface LogControllerView()

@end

@implementation LogControllerView
@synthesize txtPassword,txtUsername;
- (void)viewDidLoad {

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)standardUIActionSheetPressed:(id)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Recutitor",@"Purite", nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    if(buttonIndex==0)
    {
        NSLog(@"rec");
    }
    else if(buttonIndex==1)
    {
        NSLog(@"pur");
    }else{
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backgroudtap:(id)sender {
    [self.view endEditing:YES];
}

-(IBAction)signinClicked:(id)sender
{
    [PFUser logInWithUsernameInBackground:txtUsername.text password:txtPassword.text
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            [self performSegueWithIdentifier:@"login_success" sender:self];
                                            NSLog(@"Successful");

                                        } else {
                                            NSLog(@"FAILED");
                                            // The login failed. Check error to see why.
                                        }
                                    }];
}

-(BOOL)textFieldShowReturn:(UITextField *)textfield
{
    [textfield resignFirstResponder];
    return YES;
}

@end
