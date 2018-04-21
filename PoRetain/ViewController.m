//
//  ViewController.m
//  PoRetain
//
//  Created by Dxc_iOS on 2018/4/20.
//  Copyright © 2018年 肖中旺. All rights reserved.
//

#import "ViewController.h"

#import "bViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    NSArray *ary=[[NSArray alloc]init];
    
    self.test=[[Test alloc]init];
//    self.test3=[self.test copy];
    self.test2=self.test;
    
//    _test2=self.test;
//
//     self.test=[[Test alloc]init];
    _test3=self.test;
    
    NSLog(@"%@--%ld-%ld-%ld",ary,[self.test retainCount],[_test2 retainCount],[_test3 retainCount]);
    
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(80, 150, 150, 60)];
    [self.view addSubview:label];
    label.backgroundColor=[UIColor redColor];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushB:)];
    label.userInteractionEnabled=YES;
    [label addGestureRecognizer:tap];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)pushB:(UITapGestureRecognizer *)sender
{
//    self.test=nil;
    [self.test release];
    NSLog(@"ppp-%ld",[self.test retainCount]);
//    bViewController *vc=[[bViewController alloc]init];
//    NSLog(@"vc--%ld",[vc retainCount]);
//    [self.navigationController pushViewController:vc animated:YES];
}

-(void)dealloc{
    [super dealloc];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
