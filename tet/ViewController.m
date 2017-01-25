//
//  ViewController.m
//  tet
//
//  Created by caa on 1/26/17.
//  Copyright © 2017 c. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@interface Person : NSObject
@property (nonatomic) NSArray *bookArray1;
@property (copy, nonatomic) NSArray *bookArray2;
@end

@implementation Person
-(void)setBookArray2:(NSArray *)bookArray2 {
    _bookArray2 = [bookArray2 copy];
}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSMutableArray *sourceArray = [@[@[@"book1"]] mutableCopy];
    Person *p = [[Person alloc] init];
    p.bookArray1 = sourceArray;
    p.bookArray2 = sourceArray;
    
    [sourceArray addObject:@"book2"];
    NSLog(@"");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
