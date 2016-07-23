- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 打出app根目录
    // 注：真机调试时，打出真机上的目录，Finder无法查看
    // 复制'/Users/....../Documents/'，在Finder中前往该目录
    NSLog(@"Documents Directory: %@", [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject]);
    
    /* -----------------------------------
     以NSArray/NSMutableArray为例
     -----------------------------------*/
    // 建立一个array
    NSArray *arr = @[@"Account 1", @"Account 2"];
    
    // 通过XMLDataRecordsDirectory获得XML文件夹地址
    NSURL *XMLFolderDirectory = [self XMLDataRecordsDirectory];
    
    // 创建了xml文件的地址
    NSURL *fileUrl = [NSURL URLWithString:@"array" relativeToURL: XMLFolderDirectory];
    
    // 将xml文件地址从NSURL转化成NSString
    NSString *stringPath = [fileUrl path];
    
    // 保存array文件到指定地址
    [arr writeToFile: stringPath atomically:YES];
    
    /* -----------------------------------
     以NSDictionary/NSMutableDictionary为例
     -----------------------------------*/
    // 建立一个字典
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setObject:@"Jeff" forKey:@"username"];
    [dict setObject:@"5th Ave" forKey:@"Address"];
    
    // 创建了xml文件的地址
    NSURL *dictUrl = [NSURL URLWithString:@"dict" relativeToURL:XMLFolderDirectory];
    
    // 将xml文件地址从NSURL转化成NSString
    NSString *dictStr = [dictUrl path];
    
    // 保存dict文件到指定地址
    [dict writeToFile: dictStr atomically:YES];
}

// cache文件夹
- (NSURL *)applicationCacheDirectory {
    return [[[NSFileManager defaultManager] URLsForDirectory:NSCachesDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSURL *) XMLDataRecordsDirectory{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    // 在cache文件夹中添加了一个XML文件夹
    NSURL *url = [NSURL URLWithString:@"XML/" relativeToURL:[self applicationCacheDirectory]];
    NSError *error = nil;
    if (![fileManager fileExistsAtPath:[url path]]) {
        [fileManager createDirectoryAtPath:[url path] withIntermediateDirectories:YES attributes:nil error:&error];
    }
    return url;
}