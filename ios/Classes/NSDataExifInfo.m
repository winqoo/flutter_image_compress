//
//  NSDataExifInfo.m
//  flutter_image_compress
//
//  Created by Caijinglong on 2019/2/19.
//

#import "NSDataExifInfo.h"

@implementation NSDataExifInfo {

}
- (instancetype)initWithImageData:(NSData *)imageData {
    self = [super init];
    if (self) {
        self.metadata = [SYMetadata metadataWithImageData:imageData];
    }

    return self;
}

- (instancetype)initWithMetaData:(SYMetadata *)metaData {
    self = [super init];
    if (self) {
        self.metadata = metaData;
    }

    return self;
}

+ (instancetype)infoWithImageData:(NSData *)imageData {
    return [[self alloc] initWithImageData:imageData];
}

+ (instancetype)infoWithMetaData:(SYMetadata *)metaData {
    return [[self alloc] initWithMetaData:metaData];
}

- (NSData *)saveMetaToData:(NSData *)data {
    NSData *dataWithMetadata = [SYMetadata dataWithImageData:data andMetadata:self.metadata];
    return dataWithMetadata;
}

@end

