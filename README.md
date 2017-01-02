WeFileTypeIcon
=========

####帮助您根据文件名匹配不同的icon

WeFileTypeIcon是一个简单的工具方法用于帮助您快速根据文件名来匹配不同的icon，目前已经支持绝大多数的文件类型格式匹配（音频，视频，图像，文档等）。

 * 支持平台macOS，iOS，web
 * macOS及iOS平台使用矢量资源图，避免尺寸变化带来的模糊问题。  
 * 方便扩展，可以轻松方便的帮你扩展更多的文件格式。
 * 支持换图，使用Xcode的Assets的资源管理，所见即所得的管理想要的图片资源。
 * 现支持以下格式的文件。
 
####支持格式
 
| 文件类型        | 格式           | 
| ------------- |:-------------:| 
| 音频文件     | mp3, aac, amr, ape, m4a... | 
| 视频文件      | avi, mp4, flv, mov, rm, rmvb...      | 
| 图像文件| jpg, png, bmp, jpeg, gif, tiff...    | 
| 压缩文件| zip, rar, tar, gz, bz2     |
| Word文件| doc,docx,dot,wpt     |
| ppt文件| ppt,pptx,pot    | 
| excel文件| xls,xlsx,xlt    |
| 网页文件| html,htm,dhtml,mht   | 
| 邮件文件| eml   |
| key文件| swf   | 
| pages文件| pages   | 
| numbers文件| numbers   | 
| 文本文件| txt,log   |

###使用实例
####macOS应用
 
以下是一个的使用场景实例，帮助您快速了解使用方法。
如果想创建一个类似百度网盘文件列表的macOS应用，您可能需要创建一堆带icon的Cell用来展示您的文件列表。大概只需要以下2步，除此之外不再需要自己在写一些匹配规则的方法。
  
  * 将util目录下的文件拷贝到您的项目中，并引入文件。
   
 ```objectivec
 #import "WEWFileIconUtil.h" 
     
 ```
  * 在您的项目中使用WeFileTypeIcon来匹配文件icon。 

 ```objectivec
//创建一些各种文件名的数组
NSArray *file_names = [NSArray arrayWithObjects:@"1.mp3",@"2.avi",@"4.jpg",@"5.zip",@"6.doc",@"7.ppt",@"8.xls",@"9.eml",@"10.swf",@"11.html",@"12.key",@"13.pages",@"1.numbers",@"2.txt", nil];
//imageViewAryy数组内的imageView设置icon。
 for(NSInteger i = 0;i<file_names.count;i++){
        imageViewAryy[i].image = WEWGetFileIcon(file_names[i]);
    }
    
 ```
您也可打开项目中的Demo文件夹运行Demo项目来了解使用方法。

###使用您自己的设计icon
如果您想使用自己的icon资源，你可以打开项目中的WewFileIcon.xcassets资源文件夹来进行资源替换。（注：使用PDF格式的矢量资源文件可以避免您的文件模糊问题，推荐您在开发macOS应用时使用PDF的格式资源文件。）

如果您的新增或重命名了资源文件，请切记检查WEWGetFileIcon方法是否使用新的资源文件名。

 ```objectivec
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
    }
 ```

###扩展更多格式
如果支持格式列表中未包含您的格式文件，您可以查看WEWFileIconUtil.m新增您的文件格式。

 ```objectivec
 //例如，想添加.abc,.def文件格式,可以新增以下方法
BOOL WEWIsABCFile(NSString *filename){
    return WEWIsFileInExtensionList(filename,@[@"abc",@"edf"]);
}
 ```
 到WewFileIcon.xcassets中新增一个图片资源，例如:abc_icon
 
 到WEWGetFileIcon方法中新增条件判断
 
  ```objectivec
 if (WEWIsABCFile(extension)) {
        return [NSImage imageNamed:@"abc_icon"];
    }
   
  ```
 就完成了新的格式拓展。
 
 
