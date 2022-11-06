//
//  BGTableViewSectionData+BGArray.m
//  BGTableViewComponent
//
//  Created by Bingo on 2022/10/14.
//  Copyright © 2022 xb. All rights reserved.
//

#import "BGTableViewSectionData+BGArray.h"
#import "BGThreadSafeMutableArray.h"

@implementation BGTableViewSectionData (BGArray)


- (void)addCellData:(BGTableViewRowData*)data {
    if (data) {
        [self.safeArr addObject:data];
    }
}

/**添加数据*/
- (void)addCellDataArr:(NSArray<BGTableViewRowData*>*)dataArr {
    if (!dataArr) {
        return;
    }
    [self.safeArr addObjectsFromArray:dataArr];
}

/**清空数据源*/
- (void)removeAllCellData {
    [self.safeArr removeAllObjects];
}

- (void)removeCellDataAtIndex:(NSInteger)index {
    if ([self checkBeyondIndex:index]) {
        return;
    }
    [self.safeArr removeObjectAtIndex:index];
}

- (BOOL)checkBeyondIndex:(NSInteger)index {
    if (index >= self.safeArr.count) {
        NSLog(@"BGTableViewSectionData数组越界");
        return YES;
    }
    return NO;
}

- (void)exchangeCellDataAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2 {
    if ([self checkBeyondIndex:idx1] || [self checkBeyondIndex:idx2]) {
        return;
    }
    [self.safeArr exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
}

/**插入数据*/
- (void)insertCellDataAtIndex:(NSUInteger)idx1 cellData:(BGTableViewRowData*)data {
    if ([self checkBeyondIndex:idx1] || !data) {
        return;
    }
    [self.safeArr insertObject:data atIndex:idx1];
}

- (BGThreadSafeMutableArray*)safeArr {
    return [self valueForKey:@"mDataList"];
}

@end
