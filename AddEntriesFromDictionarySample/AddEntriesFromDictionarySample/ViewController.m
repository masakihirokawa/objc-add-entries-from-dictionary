//
//  ViewController.m
//  AddEntriesFromDictionarySample
//
//  Created by Dolice on 2013/04/09.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //空の辞書を生成する
  NSMutableDictionary *dic = [NSMutableDictionary dictionary];
  
  //別の辞書に登録されているオブジェクトを一括して追加する
  NSDictionary *otherDic;
  otherDic = [NSDictionary dictionaryWithObjectsAndKeys:
              @"Apple", @"Key1",
              @"Banana", @"Key2",
              nil];
  [dic addEntriesFromDictionary:otherDic];
  
  NSLog(@"%@", dic);
}

@end
