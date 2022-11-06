//
//  BGTableViewCellOtherEventInterface.h
//  BGTableViewComponent
//
//  Created by 徐斌 on 2022/11/6.
//

#import "BGTableViewRowData.h"

/**cell对外扩展方法*/
@protocol BGTableViewCellOtherEventInterface <NSObject>

/**cell行数据*/
- (void)setBGCellData:(BGTableViewRowData *_Nonnull)bgCellData;

/**cell行数据*/
- (BGTableViewRowData* _Nonnull)bg_rowData;

/**
 cell自定义事件调用
 */
- (void)bg_cellOtherActionImplementationWithEventType:(NSInteger)eventType parameter:(NSDictionary * _Nullable)parameter;

- (void)cellSelectionStyleNone;

@end


