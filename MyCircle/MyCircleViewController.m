//
//  MyCircleViewController.m
//  MyCircle
//
//  Created by Sofia Knezevic on 2017-04-29.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "MyCircleViewController.h"
#import "UserCollectionViewCell.h"

@interface MyCircleViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *circularCollectionView;

@end

@implementation MyCircleViewController

#pragma mark - ViewController LifeCycle -
- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



#pragma mark - CollectionView Delegate & DataSource -
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 8;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UserCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"userCell" forIndexPath:indexPath];
    return cell;
    
}



@end
