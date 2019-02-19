//
//  NSDataExifInfo.h
//  flutter_image_compress
//
//  Created by Caijinglong on 2019/2/19.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import <SYPictureMetadata/SYMetadata.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDataExifInfo : NSObject
@property(nonatomic, strong) SYMetadata *metadata;

- (instancetype)initWithImageData:(NSData *)imageData;

- (instancetype)initWithMetaData:(SYMetadata *)metaData;

- (NSData *)saveMetaToData:(NSData *)data;

+ (instancetype)infoWithImageData:(NSData *)imageData;

+ (instancetype)infoWithMetaData:(SYMetadata *)metaData;

@end

NS_ASSUME_NONNULL_END
