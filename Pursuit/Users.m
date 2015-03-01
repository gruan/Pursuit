//
//  Food.m
//  MyNutritio
//
//  Created by James Lee on 12/1/14.
//  Copyright (c) 2014 MyNutritio. All rights reserved.
//


#import "Users.h"

@implementation Users
-(id)initWithfirstname:(NSString *)firstname lastname:(NSString *)lastname gpa:(NSString *)gpa company:(NSString *)company yearsofwork:(NSString *)yearsofwork skill1:(NSString *)skill1 skill2:(NSString *)skill2 skill3:(NSString *)skill3 major:(NSString *)major school:(NSString *)school degree:(NSString *)degree
{
    self = [super init];
    
    if (self) {
        _firstname= firstname;
        _lastname=lastname;
        _gpa=gpa;
        _company=company;
        _yearsofwork=yearsofwork;
        _skill1=skill1;
        _skill2=skill2;
        _skill3=skill3;
        _major=major;
        _school=school;
        _degree=degree;


    }
    
    return self;
}
-(id)initWithName:(NSString *)username password:(NSString *)password gender:(NSString *)gender phone:(NSString *)phone Location:(NSString *)Location birthday:(NSString *)birthday
{
    self = [super init];
    
    if (self) {
        _username = username;
        _password=password;
        _gender=gender;
        _phone=phone;
        _Location=Location;
    }
    
    return self;
}


@end