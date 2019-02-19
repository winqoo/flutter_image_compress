//
//  CompressListHandler.m
//  flutter_image_compress
//
//  Created by cjl on 2018/9/8.
//

#import <Flutter/Flutter.h>
#import "CompressListHandler.h"
#import "CompressHandler.h"
#import "NSDataExifInfo.h"

@implementation CompressListHandler

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
    NSArray *args = call.arguments;
    FlutterStandardTypedData *list = args[0];
    int minWidth = [args[1] intValue];
    int minHeight = [args[2] intValue];
    int quality = [args[3] intValue];
    int rotate = [args[4] intValue];
    bool keepExif = [args[4] boolValue];

    NSData *data = [list data];
    NSDataExifInfo *info;

    if (keepExif) {
        info = [NSDataExifInfo infoWithImageData:data];
    }
    NSData *compressedData = [CompressHandler compressWithData:data minWidth:minWidth minHeight:minHeight quality:quality rotate:rotate];
    if (keepExif && info) {
        compressedData = [info saveMetaToData:compressedData];
    }

    result([FlutterStandardTypedData typedDataWithBytes:compressedData]);
}


@end
