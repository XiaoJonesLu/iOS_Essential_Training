
- (void) arrayDemo {
    // 创建一个NSArray, 装载一周七天，每天用NSString储存
    NSArray *daysOfWeek = @[@"Monday", @"Tuesday",
                            @"Wednesday", @"Thursday",
                            @"Friday", @"Saturday",
                            @"Sunday"];
    
    // 根据index查object
    NSLog(@"Friday is on index 4: %@", daysOfWeek[4]);
    NSLog(@"Friday is on index 4: %@", [daysOfWeek objectAtIndex:4]);
    
    // 根据object查index
    NSInteger index = [daysOfWeek indexOfObject:@"Friday"];
    NSLog(@"Friday is on index %li", index);
    
    NSMutableArray *mutableDaysOfWeek = [daysOfWeek mutableCopy];
    
    // 根据index查object
    NSLog(@"Friday is on index 4: %@", mutableDaysOfWeek[4]);
    NSLog(@"Friday is on index 4: %@", [mutableDaysOfWeek objectAtIndex:4]);
    
    // 根据object查index
    index = [mutableDaysOfWeek indexOfObject:@"Friday"];
    NSLog(@"Friday is on index %li", index);
    
    // 添加object
    [mutableDaysOfWeek addObject:@"NationalDay"];
    index = [mutableDaysOfWeek indexOfObject:@"NationalDay"];
    NSLog(@"NationalDay is on index %li", index);
    
    // 在某index添加object
    [mutableDaysOfWeek insertObject:@"NOTHING" atIndex:0];
    
    // 直接删除object
    [mutableDaysOfWeek removeObject:@"Monday"];
    index = [mutableDaysOfWeek indexOfObject:@"NationalDay"];
    NSLog(@"NationalDay is on index %li", index);
    
    // 根据index删除object
    [mutableDaysOfWeek removeObjectAtIndex:1];
}

- (void) dictionaryDemo {
    // 创建一个NSDictionary, 以星期为key, 天气情况为value
    NSDictionary *weather = @{@"星期三" : @"晴天28-36度",
                              @"星期四" : @"晴天29-38度",
                              @"星期五" : @"晴天29-37度"
                              };
    // 用key进行查询(例: 查询星期五的天气)
    NSLog(@"后天的天气：%@", weather[@"星期五"]);
    NSLog(@"后天的天气：%@", [weather objectForKey: @"星期五"]);
    
    // 获取NSDictionary里面所有的keys
    NSArray *days = [weather allKeys];
    
    // 通过objective-fast enumeration打印出每一个元素
    for (NSString *dayName in days) {
        NSLog(@"%@", dayName);
    }
    
    // 创建mutable dictionary
    NSMutableDictionary *mutableWeather = [weather mutableCopy];
    
    // 修改星期三的值
    [mutableWeather setObject:@"雨" forKey:@"星期三"];
    
    // 添加星期六的值
    [mutableWeather setObject:@"雪" forKey:@"星期六"];
    
    // 删除星期六的值
    [mutableWeather removeObjectForKey:@"星期六"];
}
