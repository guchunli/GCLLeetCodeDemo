//
//  ViewController.m
//  GCLLeetcode
//
//  Created by tggcl on 2018/1/6.
//  Copyright © 2018年 tggcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSLog(@"%ld",[self addFiboWithNum:12]);
//    NSLog(@"%ld",[self addFiboWithMax:300]);
    
//    NSArray *arr = @[@1,@4,@2,@3];
//    NSLog(@"561:%ld",[self arrayPairSum:arr]);
    
//    NSArray *nums = @[@[@1,@2],@[@3,@4]];
//    NSInteger r = 1, c = 4;
//    NSLog(@"566.%@",[self matrixReshape:nums :r :c]);
    
//    NSArray *arr = @[@1,@1,@0,@1,@1,@1];
//    NSLog(@"485.%ld",[self findMaxConsecutiveOnes:arr]);
    
    /*
    NSArray *arr = @[@1,@1,@0,@1,@1,@1];
    NSLog(@"695.%ld",[self maxAreaOfIsland:arr]);
     */
    
//    NSArray *arr = @[@4,@3,@2,@7,@8,@2,@3,@1];
//    NSLog(@"448.%@",[self findDisappearedNumbers:arr]);
    
//    NSArray *arr = @[@0, @1, @0, @3, @12];
//    NSLog(@"283.%@",[self moveZeroes:arr]);
    
//    NSArray *bits = @[@1, @0, @0];
//    NSArray *bits = @[@1, @1, @1, @0];
//    NSLog(@"717.%ld",[self isOneBitCharacter:bits]);
    
//    NSArray *priceArr = @[@2, @1, @2, @3, @1];
//    NSLog(@"122.%ld",[self maxProfit:priceArr]);
    
//    NSArray *elems = @[@3, @1, @2, @2, @1, @2, @2];
//    NSLog(@"169.%ld",[self majorityElement:elems]);
    
//    NSArray *elems = @[@2, @7, @11, @15];
//    NSLog(@"167.%@",[self twoSumII:elems :9]);
    
//    NSArray *arr = @[@1,@2,@2,@3,@1,@4,@2];
//    NSLog(@"697.%ld",[self findShortestSubArray:arr]);
    
//    NSArray *arr = @[@5,@2,@3,@4,@2];
//    NSLog(@"217.%ld",[self containsDuplicate:arr]);
    
//    NSArray *nums = @[@3, @6, @1, @0];
//    NSArray *nums = @[@1, @2, @3, @4];
//    NSLog(@"747.%ld",[self dominantIndex:nums]);
    
    /*
    NSArray *arr = @[@1,@1,@0,@1,@1,@1];
    NSLog(@"661.%@",[self imageSmoother:arr]);
    */
    
//    NSArray *arr = @[@10,@15,@20];
//    NSArray *arr = @[@1, @100, @1, @1, @1, @100, @1, @1, @100, @1];
//    NSLog(@"746.%ld",[self minCostClimbingStairs:arr]);
    
//    NSArray *arr = @[@1,@2,@3,@4,@5];
//    NSLog(@"628:%ld",[self maximumProduct:arr]);
    
//    NSArray *arr = @[@1,@3,@5,@4,@7,@11,@12];
//    NSLog(@"674:%ld",[self findLengthOfLCIS:arr]);
    
//    NSArray *arr = @[@1, @7, @3, @6, @5, @6];
//    NSLog(@"724:%ld",[self pivotIndex:arr]);
    
//    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@3,@2,@2,@3,@4,@4]];
//    NSLog(@"27.%ld",[self removeElement:arr :3]);
    
//    NSArray *arr = @[@-2,@1,@-3,@4,@-1,@2,@1,@-5,@4];
//    NSLog(@"53.%ld",[self maxSubArray:arr]);
    
//    NSArray *arr = @[@1,@3,@5,@6];
//    NSLog(@"35.%ld",[self searchInsert:arr :5]);
    
//    NSLog(@"118.%@",[self generate:3]);
    
//    NSMutableArray *marr = [NSMutableArray arrayWithArray:@[@9,@9,@9]];
//    NSLog(@"66.%@",[self plusOne:marr]);
    
//    NSArray *arr = @[@1,@12,@-5,@-6,@50,@3];
//    NSLog(@"643.%f",[self findMaxAverage:arr :4]);

    /*
    NSLog(@"119.%@",[self generateII:5]);
    */
    
//    NSArray *elems = @[@2, @7, @11, @15];
//    NSLog(@"1.%@",[self twoSum:elems :9]);
//
//    NSArray *arr = @[@2, @1, @1];
//    NSLog(@"26.%@",[self removeDuplicates:arr]);
    
//    NSArray *arr = @[];
//    NSLog(@"%ld",[self containsNearbyDuplicate:arr :<#(NSInteger)#>])
}
#pragma mark - 斐波那契 Fibonacci
- (NSInteger)addFiboWithNum:(NSInteger)fiboNum{
    
    NSInteger a = 1;
    NSInteger b = 1;
    NSInteger result = 0;
    for (int i = 3; i<=fiboNum; i++) {
        result = (a+b);
        a = b;
        b = result;
        NSLog(@"%d.---%ld",i,result);
    }
    return result;
}

- (NSInteger)addFiboWithMax:(NSInteger)maxLimit{
    
    NSInteger a = 1;
    NSInteger b = 1;
    NSInteger result = 0;
    while ((a+b)<maxLimit) {
        result = (a+b);
        NSLog(@"%ld+%ld=%ld",a,b,result);
        a = b;
        b = result;
    };
    return result;
}

#pragma mark - 1. Two Sum
- (NSArray *)twoSum:(NSArray *)arr :(NSInteger)target{
    
    for (int i = 0; i<arr.count; i++) {
        for (int j = i; j<arr.count; j++) {
            if ([arr[i]integerValue]+[arr[j] integerValue] == target) {
                return @[[NSNumber numberWithInt:i],[NSNumber numberWithInt:j]];
            }
        }
    }
    return nil;
}

#pragma mark - 26. Remove Duplicates from Sorted Array
- (NSArray *)removeDuplicates:(NSMutableArray *)arr{
    
    for (int i = 0; i<arr.count; i++) {
        for (int j = i; j<arr.count; j++) {
            if ([arr[i]integerValue] == [arr[j] integerValue]) {
                [arr removeObject:arr[j]];
            }
        }
    }
    return arr;
}

#pragma mark - 27. Remove Element
- (NSInteger)removeElement:(NSMutableArray *)arr :(NSInteger)target{
    
    NSInteger newCount = 0;
    for (int i = 0; i<arr.count; i++) {
        if ([arr[i] integerValue] != target) {
            newCount++;
//            [arr replaceObjectAtIndex:newCount withObject:arr[i]];
//            arr[newCount] = arr[i];
        }
    }
    return newCount;
}

#pragma mark - 35. Search Insert Position
- (NSInteger)searchInsert:(NSArray *)arr :(NSInteger)target{
    
    for (int i = 0; i<arr.count; i++) {
        if (target<=[arr[i] integerValue]) {
            return i;
        }
    }
    return arr.count;
}

#pragma mark - 53. Maximum Subarray
- (NSInteger)maxSubArray:(NSArray *)arr{
    
    NSInteger result = 0;
    for (int i = 0; i<arr.count; i++) {
        NSInteger maxResult = 0;
        for (int j = i; j<arr.count; j++) {
            maxResult += [arr[j]integerValue];
            result = MAX(result, maxResult);
        }
    }
    return result;
}

#pragma mark - 66. Plus One
- (NSMutableArray *)plusOne:(NSMutableArray *)arr{
    
    NSInteger tmp = 1;  //进位
    for (NSInteger i = arr.count-1; i>=0; i--) {
        
//        if (i == arr.count-1){
//            arr[arr.count-1] = [NSNumber numberWithInteger:[arr[arr.count-1] integerValue]+1];
//        }
//        if ([arr[i] integerValue] >= 10) {
//            arr[i] = [NSNumber numberWithInteger:[arr[i] integerValue]%10];
//            if (i>0) {
//                arr[i-1] = [NSNumber numberWithInteger:[arr[i-1] integerValue]+1];
//            }else{
//                [arr insertObject:@1 atIndex:0];
//            }
//        }
        
        NSInteger current = [arr[i] integerValue]+tmp;
        arr[i] = [NSNumber numberWithInteger:current%10];
        tmp = current/10;
    }
    
    if (tmp == 1) {
        [arr insertObject:@1 atIndex:0];
    }
    
    return arr;
}

#pragma mark - 118. Pascal's Triangle
- (NSArray *)generate:(NSInteger)row{
    
    NSMutableArray *resultMarr = [NSMutableArray arrayWithCapacity:row];
    for (int i = 0; i<row; i++) {
        NSMutableArray *marr = [NSMutableArray arrayWithCapacity:i+1];
        for (int j=0; j<i+1; j++) {
            if (j == 0 || j == i) {
                marr[j] = @1;
            }else{
                NSMutableArray *beforeArr = resultMarr[i-1];
                marr[j] = [NSNumber numberWithInteger:[beforeArr[j-1] integerValue]+[beforeArr[j] integerValue]];
            }
        }
        [resultMarr addObject:marr];
    }
    return [resultMarr copy];
}

#pragma mark - 119.Pascal's Triangle II
- (NSArray *)generateII:(NSInteger)row{
    
    NSMutableArray *resultMarr = [NSMutableArray arrayWithCapacity:row];
    NSMutableArray *marr = [NSMutableArray arrayWithCapacity:row];
    [resultMarr addObjectsFromArray:@[@1,@1]];
    for (int i = 2; i<row; i++) {
        NSLog(@"%d",i);
//        if (marr.count == 0) {
//            marr[0] = @1;
//        }else{
//            if (i == 1) {
//                marr[1] = @1;
//            }else {
        marr = [NSMutableArray arrayWithArray:resultMarr];
                NSLog(@"%@",marr);
                marr[i] = [NSNumber numberWithInteger:[resultMarr[i-1] integerValue]+[resultMarr[i] integerValue]];
//            }
//        }
        
        resultMarr = [NSMutableArray arrayWithArray:marr];
//        for (int j=0; j<i+1; j++) {
//            if (j == 0 || j == i) {
//                resultMarr[j] = @1;
//            }else{
//            }
//        }
//        [resultMarr addObject:marr];
    }
    return resultMarr;
}

#pragma mark - 121.Best Time to Buy and Sell Stock I
//一次交易
//- (NSInteger)maxProfit:(NSArray *)arr{
//
//    NSInteger buy = [arr[0] integerValue];
//    NSInteger profit = 0;
//    //1.找到最低价格
//    for (int i = 1; i<arr.count; i++) {
//        buy = MIN(buy, [arr[i] integerValue]);              //低价买入
//        profit = MAX(profit, [arr[i] integerValue]-buy);    //高价卖出
//    }
//
//    return profit;
//}
#pragma mark - 122. Best Time to Buy and Sell Stock II
//无限次买入卖出 ***贪心法
- (NSInteger)maxProfit:(NSArray *)arr{

    NSInteger total = 0;
    //1.找到最低价格
    for (int i = 0; i<arr.count-1; i++) {
        if ([arr[i] integerValue]<[arr[i+1] integerValue]) {
            total = total + [arr[i+1] integerValue]-[arr[i] integerValue];
        }
    }

    return total;
}
//#pragma mark - Best Time to Buy and Sell Stock III
//两次交易
//- (NSInteger)maxProfit:(NSArray *)arr{
//
//    return 0;
//}
//#pragma mark - Best Time to Buy and Sell Stock IV
//k次交易
//- (NSInteger)maxProfit:(NSArray *)arr{
//
//    return 0;
//}

#pragma mark - 167. Two Sum II - Input array is sorted
- (NSArray *)twoSumII:(NSArray *)arr :(NSInteger)target{
    
//    for (int i = 0; i<arr.count; i++) {
//        NSNumber *firstNum = arr[i];
//        for (int j = 0; j<arr.count; j++) {
//            NSNumber *secondNum = arr[j];
//            if ([firstNum integerValue]+[secondNum integerValue] == target && i!=j) {
//                NSLog(@"%@+%@=%ld",firstNum,secondNum,target);
//                return @[[NSNumber numberWithInt:i+1],[NSNumber numberWithInt:j+1]];
//            }
//        }
//    }
    NSInteger left = 0,right = arr.count-1;
    while (left<right) {
        NSNumber *firstNum = arr[left];
        NSNumber *secondNum = arr[right];
        if ([firstNum integerValue]+[secondNum integerValue] == target) {
            NSLog(@"%@+%@=%ld",firstNum,secondNum,target);
            return @[[NSNumber numberWithInteger:left+1],[NSNumber numberWithInteger:right+1]];
        }else if ([firstNum integerValue]+[secondNum integerValue] < target){
            left++;
        }else{
            right--;
        }
    }
    return nil;
}

#pragma mark - 169. Majority Element
- (NSInteger)majorityElement:(NSArray *)arr{
    
    NSNumber *elem = 0;
    NSInteger count = 0;
    
    for(int i = 0; i < arr.count; i++)  {
        
        if(count == 0)  {
            elem = arr[i];
            count = 1;
        }
        else    {
            if([elem isEqual:arr[i]])
                count++;
            else
                count--;
        }
        
    }
    
    return [elem integerValue];
}

#pragma mark - 217. Contains Duplicate
- (BOOL)containsDuplicate:(NSArray *)arr{
    
    //1.置换
    
    //2.排序，比较相邻
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    NSLog(@"%@",arr);
    for (int i = 0; i<arr.count-1; i++) {
        if ([arr[i] isEqual:arr[i+1]]) {
            return NO;
        }
    }
    
    //3.键值编码
//    NSMutableDictionary *mdic = [NSMutableDictionary dictionaryWithCapacity:3];
//    for (NSNumber *num in arr) {
//        if ([mdic.allKeys containsObject:num]) {
//            return NO;
//        }else{
//            [mdic setObject:@"1" forKey:num];
//        }
//    }
    
    return YES;
}

#pragma mark - 219. Contains Duplicate II
- (BOOL)containsNearbyDuplicate:(NSArray *)arr :(NSInteger)distance{
    
    for (int i = 0; i<arr.count; i++) {
        for (int j = i; j<arr.count; j++) {
            if ([arr[i] integerValue] == [arr[j] integerValue] && j-i<=distance) {
                return YES;
            }
        }
    }
    
    return NO;
}

#pragma mark - 268. Missing Number
//- (NSInteger)missingNumber:(NSArray *)arr{
//
//
//}

#pragma mark - 283. Move Zeroes
- (NSArray *)moveZeroes:(NSArray *)arr{
    
    NSMutableArray *marr = [NSMutableArray arrayWithCapacity:3];
    int zeroNum = 0;
    for (int i = 0; i<arr.count; i++) {
        NSNumber *num = arr[i];
        if ([num integerValue] == 0) {
            zeroNum++;
        }else{
            [marr addObject:num];
        }
    }
    
    for (int i = 0; i<zeroNum; i++) {
        [marr addObject:@0];
    }
    
    return [marr copy];
}

#pragma mark - 448. Find All Numbers Disappeared in an Array
- (NSArray *)findDisappearedNumbers:(NSArray *)arr{
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2]; //升序
    }];
    NSMutableArray *disArr = [NSMutableArray arrayWithCapacity:3];
    NSNumber *minNum = arr[0];
    NSNumber *maxNum = arr.lastObject;
    for (NSInteger i = [minNum integerValue]+1; i<[maxNum integerValue]; i++) {
        NSNumber *num = [NSNumber numberWithInteger:i];
        BOOL flag = NO;
        for (NSInteger j = 0; j<arr.count; j++) {
            NSNumber *anum = arr[j];
            if ([anum integerValue] == [num integerValue]) {
                flag = true;
            }
        }
        if (!flag) {
            [disArr addObject:num];
        }
    }
    return [disArr copy];
}
#pragma mark - 485. Max Consecutive Ones
- (NSInteger)findMaxConsecutiveOnes:(NSArray *)arr{
    
    NSInteger maxNum = 0;
    NSInteger tmpNum = 0;
    for (int i = 0 ; i<arr.count; i++) {
        NSNumber *num = arr[i];
        if ([num integerValue] == 1) {
            tmpNum++;
            maxNum = MAX(maxNum, tmpNum);
        }else{
            tmpNum = 0;
        }
    }
    return maxNum;
}

#pragma mark - 561. Array Partition I
- (NSInteger)arrayPairSum:(NSArray *)arr{
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2]; //升序
    }];
    
    NSInteger sumResult = 0;
    for (int i = 0; i<arr.count; i+=2) {
        NSNumber *num = arr[i];
        sumResult += [num integerValue];
    }
    return sumResult;
}

#pragma mark - 566. Reshape the Matrix
- (NSArray *)matrixReshape:(NSArray *)arr :(NSInteger)r  :(NSInteger)c{
    
    NSMutableArray *resultArr = [NSMutableArray arrayWithCapacity:3];
    //将所有元素放到一元数组中
//    NSArray *allObjectsArr = [self arrObjects:arr];
    //排列新队列
//    for (int i = 0; i<r; i++) {
//        NSMutableArray *rArr = [NSMutableArray arrayWithCapacity:3];
//        for (int j = 0; j<c; j++) {
//             [rArr addObject:allObjectsArr[i*r+j]];
//        }
//        [resultArr addObject:rArr];
//    }
    
    //直接排列新队列
    NSArray *firstArr = arr[0];
    NSInteger n = firstArr.count;
    for (int i = 0; i<r; i++) {
        NSMutableArray *rArr = [NSMutableArray arrayWithCapacity:3];
        for (int j = 0; j<c; j++) {
            [rArr addObject:arr[(i*r+j)/n][(i*r+j)%n]];
        }
        [resultArr addObject:rArr];
    }
    
    for (int i = 0; i<r*c; i++) {
        NSArray *rArr = resultArr[i/c];
        NSLog(@"%@",rArr[i%c]);
    }
    
    return resultArr;
    
//    NSInteger m = arr.count;
//    NSArray *firstArr = arr[0];
//    NSInteger n = firstArr.count;
//    if (m*n != r*c) {
//        return arr;
//    }
//    NSMutableArray *marr = [NSMutableArray arrayWithCapacity:3];
//    for (int i = 0; i<r; i++) {
//        for (int j = 0; j<c; j++) {
//            NSInteger k = i*c+j;
//            marr[i][j] = arr[k/n][k%n];
//        }
//    }
//    return [marr copy];
}

- (NSArray *)arrObjects:(NSArray *)arr{
    NSMutableArray *marr = [NSMutableArray arrayWithCapacity:3];
    //递归：多维数组，每个数组个数不定，类型不定
//    for (int i = 0; i<arr.count; i++) {
//        if ([arr[i] isKindOfClass:[NSArray class]]) {
//            [marr addObjectsFromArray:[self arrObjects:arr[i]]];
//        }else{
//            [marr addObject:arr[i]];
//        }
//    }
    
    NSInteger m = arr.count;
    NSArray *firstArr = arr[0];
    NSInteger n = firstArr.count;
    for (int i = 0; i<m; i++) {
        for (int j = 0; j<n; j++) {
            [marr addObject:arr[i][j]];
        }
//        if ([arr[i] isKindOfClass:[NSArray class]]) {
//            [marr addObjectsFromArray:[self arrObjects:arr[i]]];
//        }else{
//            [marr addObject:arr[i]];
//        }
    }
    
    return marr;
}

#pragma mark - 628. Maximum Product of Three Numbers
- (NSInteger)maximumProduct:(NSArray *)arr{
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    return [arr[arr.count-1] integerValue]*[arr[arr.count-2] integerValue]*[arr[arr.count-3] integerValue];
}

#pragma mark - 643. Maximum Average Subarray I
- (double)findMaxAverage:(NSArray *)arr :(NSInteger)count{
    
    double result = 0;
    for (int i = 0; i<arr.count; i++) {
        if (arr.count-i >= count) {
            double maxResult = 0;
            for (int j = i; j<i+count; j++) {
                maxResult += [arr[j]integerValue];
            }
            result = MAX(result, maxResult);
        }
    }
    return result/count;
}

#pragma mark - 661. Image Smoother
- (NSArray *)imageSmoother:(NSArray *)arr{
    
    return arr;
}

#pragma mark - 674. Longest Continuous Increasing Subsequence
- (NSInteger)findLengthOfLCIS:(NSArray *)arr{
    NSInteger maxLength = 1;
    NSInteger tmpLength = 1;
    for (int i = 1; i<arr.count; i++) {
        if ([arr[i-1] integerValue]<[arr[i] integerValue]) {
            tmpLength++;
            maxLength = MAX(maxLength, tmpLength);
        }else{
            tmpLength = 1;
        }
    }
    return maxLength;
}

#pragma mark - 695. Max Area of Island
- (NSInteger)maxAreaOfIsland:(NSArray *)arr{
    NSInteger resultNum = 0;
    for (int i = 0; i<arr.count; i++) {
        
    }
    
    return resultNum;
}

#pragma mark - 697. Degree of an Array
- (NSInteger)findShortestSubArray:(NSArray *)arr{
    
    /*
    NSMutableDictionary *numDic = [NSMutableDictionary dictionaryWithCapacity:3];
    for (int i = 0; i<arr.count; i++) {
        NSNumber *num = arr[i];
        if ([numDic.allKeys containsObject:num]) {
            [numDic setObject:[NSNumber numberWithInteger:[numDic[num] integerValue]+1] forKey:num];
        }else{
            [numDic setObject:@1 forKey:num];
        }
    }
    //最多元素出现的次数
    NSInteger maxNum = 0;
    for (int i = 0; i<numDic.allValues.count;i++) {
        maxNum = MAX(maxNum, [numDic.allValues[i] integerValue]);
    }
    //最多元素
    NSNumber *target;
    for (NSNumber *key in numDic) {
        if ([numDic[key] isEqual:[NSNumber numberWithInteger:maxNum]]) {
            target = key;
        }
    }
    //最小、最大位置
    NSInteger left = 0;
    NSInteger right = arr.count-1;
    for (NSInteger i = 0; i<arr.count; i++) {
        if ([arr[i] isEqual:target]) {
            left = i;
            break;
        }
    }
    
    for (NSInteger i = arr.count-1; i>=0; i--) {
        if ([arr[i] isEqual:target]) {
            right = i;
            break;
        }
    }
    */
    //每个元素出现的次数
    NSMutableDictionary *numDic = [NSMutableDictionary dictionaryWithCapacity:3];
    //每个元素出现的最小最大位置
    NSMutableDictionary *indexDic = [NSMutableDictionary dictionaryWithCapacity:3];
    //最多元素出现的次数
    NSInteger maxNum = 0;
    for (int i = 0; i<arr.count; i++) {
        NSNumber *num = arr[i];
        if ([numDic.allKeys containsObject:num]) {
            NSInteger newNum = [numDic[num] integerValue]+1;
            [numDic setObject:[NSNumber numberWithInteger:newNum] forKey:num];
            NSMutableArray *marr = indexDic[num];
            [marr replaceObjectAtIndex:1 withObject:[NSNumber numberWithInt:i]];
            maxNum = MAX(maxNum, newNum);
        }else{
            [numDic setObject:@1 forKey:num];
            NSMutableArray *marr = [NSMutableArray arrayWithCapacity:2];
            [marr addObject:[NSNumber numberWithInt:i]];
            [marr addObject:[NSNumber numberWithInt:i]];
            [indexDic setObject:marr forKey:num];
        }
    }
    
    //最多元素
    for (NSNumber *key in numDic.allKeys) {
        if ([numDic[key] isEqual:[NSNumber numberWithInteger:maxNum]]) {
            NSMutableArray *marr = indexDic[key];
            return ([marr[1] integerValue]-[marr[0]integerValue])+1;
        }
    }
    return 0;
}

#pragma mark - 717. 1-bit and 2-bit Characters
- (BOOL)isOneBitCharacter:(NSArray *)arr{
    
    if (arr.count == 1) {
        return YES;
    }
    
    if (arr.count == 2) { //题目说明不会以00结尾
        return NO;
    }
    
    for (int i = 0; i<arr.count; ) {
        NSNumber *num = arr[i];
        if ([num integerValue] == 1) {
            if (i == arr.count-2 || i == arr.count-1) { //末尾10或11
                return NO;
            }
            i+=2;
        }else {
            if (i == arr.count-1) { //末尾0，题目说明不会以00结尾
                return YES;
            }
            i++;
        }
    
    }
    return YES; //走不到这里
}

#pragma mark - 724. Find Pivot Index
- (NSInteger)pivotIndex:(NSArray *)arr{
    
    //O(n^2)
//    for (NSInteger i = 0; i<arr.count-1; i++) {
//        if ([self arrSum:arr :0 :i-1] == [self arrSum:arr :i+1 :arr.count-1]) {
//            return i;
//        }
//    }
    //O(n)
    NSInteger result = 0;
    for (NSInteger i = 0;i<arr.count;i++) {
        NSNumber *num = arr[i];
        result += [num integerValue];
    }
    
    NSInteger tmpRes = 0;
    for (NSInteger i = 1; i<arr.count; i++) {
        tmpRes += [arr[i-1] integerValue];
        if (result == tmpRes*2+[arr[i] integerValue])
            return i;
        
    }
    
    return -1;
}

- (NSInteger)arrSum:(NSArray *)arr :(NSInteger)left :(NSInteger)right{
    NSInteger result = 0;
    for (NSInteger i = left;i<=right;i++) {
        NSNumber *num = arr[i];
        result += [num integerValue];
    }
    return result;
}

#pragma mark - 746. Min Cost Climbing Stairs
- (NSInteger)minCostClimbingStairs:(NSArray *)arr{
    
//    NSInteger result;
    NSInteger dp0 = 0,dp1 = 0,dp2 = 0;
    for (int i = 2; i<arr.count+1; i++) {
        
        dp2 = MIN(dp0+[arr[i-2] integerValue],dp1+[arr[i-1]integerValue]);
        dp0 = dp1;
        dp1 = dp2;
    }
    
    return dp2;
}

#pragma mark - 747. Largest Number At Least Twice of Others
- (NSInteger)dominantIndex:(NSArray *)arr{
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    if ([arr[arr.count-1] integerValue]/[arr[arr.count-2] integerValue]>=2) {
        return YES;
    }else{
        return NO;
    }
}

@end
