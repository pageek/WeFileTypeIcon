WeFileTypeIcon
=========

####帮助您根据文件名匹配不同的icon

WeFileTypeIcon是一个简单的工具类用于帮助您快速根据文件名来匹配不同的icon，目前支持绝大多数的文件类型匹配（音频，视频，图像，文档等）。

 * 支持平台macOS，iOS，web
 * macOS及iOS平台使用矢量资源图，避免尺寸变化带来的模糊问题。  
 * 现支持以下格式的文件
 
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

###使用方法
 * macOS开发
 
 只需将util目录下的文件copy到您的项目中，并引入文件
 
 ```objectivec
#import "WEWFileIconUtil.h"
```

 调用方法：
 ```objectivec
 NSImageView *imageDemo = [[NSImageView alloc]init];
 imageDemo.image = WEWGetFileIcon(file_names[i]);
```
项目中有Demo文件夹也可供您参考。





