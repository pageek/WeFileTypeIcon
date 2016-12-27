#import "WEWFileIconUtil.h"


BOOL WEWIsFileInExtensionList(NSString* extension, NSArray* extensionlist) {
    if (extension == nil || extensionlist.count == 0) return NO;
    return [extensionlist containsObject:extension];
}

BOOL WEWIsMusicFile(NSString* fileName) {
    return WEWIsFileInExtensionList(fileName, @[@"mp3", @"aac", @"amr", @"ape", @"m4a", @"m4p", @"wav", @"wma", @"aiff", @"flac",@"cda",@"flac",@"mid",@"mka",@"mp2",@"mpa",@"mpc",@"ofr",@"ogg",@"ra",@"wv",@"tta",@"ac3",@"dts"]);
}

BOOL WEWIsVedioFile(NSString* fileName) {
    return WEWIsFileInExtensionList(fileName, @[@"avi", @"mp4", @"flv", @"mov", @"rm", @"rmvb", @"m4p", @"m4v", @"mpg", @"mpeg", @"mpe", @"mpv", @"3gp",@"asf",@"wmv",@"avs",@"flv",@"mkv",@"mov",@"3gp",@"dat",@"ogm",@"vob",@"rm",@"rmvb",@"ts",@"tp",@"ifo",@"nsv"]);
}

BOOL WEWIsPictureFile(NSString* fileName) {
    return WEWIsFileInExtensionList(fileName, @[@"jpg", @"png", @"bmp", @"jpeg", @"gif", @"tiff", @"tif",@"eps",@"mif",@"miff",@"tif",@"tiff",@"svg",@"wmf",@"jpe",@"dib",@"ico",@"icon"]);
}

BOOL WEWIsCompressFile(NSString *filename) {
    return WEWIsFileInExtensionList(filename, @[@"zip", @"rar", @"tar", @"gz", @"bz2"]);
}

BOOL WEWIsWordFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"doc",@"docx",@"dot",@"wpt", nil]);
}
BOOL WEWIsPPTFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"ppt",@"pptx",@"pot", nil]);
}
BOOL WEWIsExcelFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"xls",@"xlsx",@"xlt",nil]);
}

BOOL WEWIsMailFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"eml",nil]);
}
BOOL WEWIsFlashFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"swf",nil]);
}
BOOL WEWIsBrowserFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"html",@"htm",@"dhtml",@"mht",nil]);
}
BOOL WEWIsKeynoteFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"key",nil]);
}
BOOL WEWIsPageFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"pages",nil]);
}
BOOL WEWIsNumbersFile(NSString *filename){
    return WEWIsFileInExtensionList(filename, [NSArray arrayWithObjects:@"numbers",nil]);
}

BOOL WEWIsTextFile(NSString *filename){
    return WEWIsFileInExtensionList(filename,@[@"txt",@"log"]);
}

NSImage* WEWGetDefaultFileTypeIcon() {
    return [NSImage imageNamed:@"ic_txt_solid_48"];
}

NSImage * WEWGetSystemFileTypeIcon(NSString * fileType){
    return [[NSWorkspace sharedWorkspace] iconForFileType:fileType];
}

NSImage *WEWGetFileIcon(NSString *fileName){
    if (fileName == nil) return nil;
    NSString *extension = [fileName pathExtension];
    extension = [extension lowercaseString];
    if (WEWIsWordFile(extension)) {
        return [NSImage imageNamed:@"ic_word_solid_48"];
    } else if (WEWIsPPTFile(extension)) {
        return [NSImage imageNamed:@"ic_powerpoint_solid_48"];
    } else if ([extension isEqualToString:@"psd"]) {
        return [NSImage imageNamed:@"ic_pdf_solid_48"];
    } else if ([extension isEqualToString:@"pdf"]) {
        return [NSImage imageNamed:@"ic_pdf_solid_48"];
    } else if (WEWIsTextFile(extension)) {
        return [NSImage imageNamed:@"ic_txt_solid_48"];
    } else if (WEWIsExcelFile(extension)) {
        return [NSImage imageNamed:@"ic_excel_solid_48"];
    } else if (WEWIsCompressFile(extension)) {
        return [NSImage imageNamed:@"ic_zip_solid_48"];
    } else if (WEWIsMusicFile(extension)) {
        return [NSImage imageNamed:@"ic_mp3_solid_48"];
    } else if (WEWIsVedioFile(extension)) {
        return [NSImage imageNamed:@"ic_mp4_solid_48"];
    } else if (WEWIsPictureFile(extension)) {
        return [NSImage imageNamed:@"ic_jpg_solid_48"];
    } else if (WEWIsMailFile(extension)) {
        return [NSImage imageNamed:@"ic_eml_solid_48"];
    } else if (WEWIsFlashFile(extension)) {
        return [NSImage imageNamed:@"ic_pdf_solid_48"];
    } else if (WEWIsBrowserFile(extension)) {
        return [NSImage imageNamed:@"ic_html_solid_48"];
    } else if (WEWIsKeynoteFile(extension)) {
        return [NSImage imageNamed:@"ic_powerpoint_solid_48"];
    } else if (WEWIsNumbersFile(extension)) {
        return [NSImage imageNamed:@"ic_excel_solid_48"];
    } else if (WEWIsPageFile(extension)) {
        return [NSImage imageNamed:@"ic_word_solid_48"];
    }
    
    return WEWGetSystemFileTypeIcon(extension);
    
}
