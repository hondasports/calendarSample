//
//  ViewController.m
//  calendarSample
//
//  Created by MIYAMOTO TATSUYA on 2012/11/22.
//  Copyright (c) 2012年 MIYAMOTO TATSUYA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    datas = [[NSArray alloc] initWithObjects:@"兵庫県", @"大阪市", @"神戸市", @"奈良県", @"滋賀県", nil];
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// セクションの数を返す
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    NSLog(@"__PRETTY_FUNCTION__ : %s" , __PRETTY_FUNCTION__);
    return 1;
}

// セクションに応じたセルの数を返す
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return datas.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"__PRETTY_FUNCTION__ : %s" , __PRETTY_FUNCTION__);
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    NSLog(@"text : %@", cell.label);
    cell.label.text = datas[indexPath.row];
    return cell;
}

@end
