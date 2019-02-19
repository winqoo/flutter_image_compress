//
//  NSDataExifInfo.h
//  flutter_image_compress
//
//  Created by Caijinglong on 2019/2/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDataExifInfo : NSObject
@property(nonatomic, strong) NSData *imageData;

- (instancetype)initWithImageData:(NSData *)imageData;

- (NSData *)saveMetaToData:(NSData *)data;

+ (instancetype)infoWithImageData:(NSData *)imageData;

@end

NS_ASSUME_NONNULL_END
