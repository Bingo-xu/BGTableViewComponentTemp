//
//  BGTableViewSectionData.m
//  BGTableViewComponent
//
//  Created by Bingo on 2022/10/14.
//  Copyright © 2022 xb. All rights reserved.
//

#import "BGTableViewSectionData.h"
#import "BGThreadSafeMutableArray.h"

@implementation BGTableViewSection

+ (BGTableViewSection* )creatSectionWith:(UIView* )sectionView height:(CGFloat)height {
    return [self creatSectionWith:sectionView height:height sectionData:nil];
}

+ (BGTableViewSection* )creatSectionWith:(UIView* )sectionView height:(CGFloat)height sectionData:(id)sectionData {
    BGTableViewSection* section  = [BGTableViewSection new];
    section.height = height;
    section.sectionView = sectionView;
    section.sectionData = sectionData;
    return section;
}

@end

@interface BGTableViewSectionData ()
@property (nonatomic,strong) BGThreadSafeMutableArray *mDataList;

@end

@implementation BGTableViewSectionData

- (void)setDataList:(NSArray *)dataList {
    [self.mDataList removeAllObjects];
    [self.mDataList addObjectsFromArray:dataList];
}

- (NSArray *)dataList {
    return self.mDataList;
}

- (BGThreadSafeMutableArray *)mDataList {
    if (!_mDataList) {
        _mDataList = [BGThreadSafeMutableArray new];
    }
    return _mDataList;
}

@end
