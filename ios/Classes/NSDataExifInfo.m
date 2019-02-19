//
//  NSDataExifInfo.m
//  flutter_image_compress
//
//  Created by Caijinglong on 2019/2/19.
//

#import "NSDataExifInfo.h"
#import "UIImage+scale.h"
#import <SYPictureMetadata/SYMetadata.h>

@implementation NSDataExifInfo {
    SYMetadata *metadata;
}
- (instancetype)initWithImageData:(NSData *)imageData {
    self = [super init];
    if (self) {
        self.imageData = imageData;
        [self saveExifInfo];
    }

    return self;
}

+ (instancetype)infoWithImageData:(NSData *)imageData {
    return [[self alloc] initWithImageData:imageData];
}

- (void)saveExifInfo {
    metadata = [SYMetadata metadataWithImageData:self.imageData];
}

- (NSData *)saveMetaToData:(NSData *)data {
    NSData *dataWithMetadata = [SYMetadata dataWithImageData:data andMetadata:metadata];
    return dataWithMetadata;
}

@end

