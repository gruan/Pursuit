//
//  Food.h
//  MyNutritio
//
//  Created by James Lee on 12/1/14.
//  Copyright (c) 2014 MyNutritio. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface Users : NSObject

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSString *gpa;
@property (nonatomic, strong) NSString *company;
@property (nonatomic, strong) NSString *yearsofwork;
@property (nonatomic, strong) NSString *birthday;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *skill1;
@property (nonatomic, strong) NSString *skill2;
@property (nonatomic, strong) NSString *skill3;
@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) NSString *major;
@property (nonatomic, strong) NSString *school;
@property (nonatomic, strong) NSString *degree;
@property (nonatomic, strong) NSString *Location;

-(id)initWithName:(NSString *)username password:(NSString *)password gender:(NSString *)gender phone:(NSString *)phone Location:(NSString *)Location birthday:(NSString *)birthday;

-(id)initWithfirstname:(NSString *)firstname lastname:(NSString *)lastname gpa:(NSString *)gpa company:(NSString *)company yearsofwork:(NSString *)yearsofwork skill1:(NSString *)skill1 skill2:(NSString *)skill2 skill3:(NSString *)skill3 major:(NSString *)major school:(NSString *)school degree:(NSString *)degree;

//- (id)initWithName:(NSString *)username password:(NSString *)password firstname:(NSString *)firstname lastname:(NSString *)lastname gpa:(NSString *)gpa company:(NSString *)company yearsofwork:(NSString *)yearsofwork gender:(NSString *)gender skill1:(NSString *)skill1 skill2:(NSString *)skill2 skill3:(NSString *)skill3 phone:(NSString *)phone major:(NSString *)major school:(NSString *)school degree:(NSString *)degree Location:(NSString *)Location birthday:(NSString *)birthday;
@end