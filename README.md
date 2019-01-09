# RSScoreDemo
自动引导 App Store 评分工具

![](https://img.shields.io/badge/platform-iOS-red.svg) 
![](https://img.shields.io/badge/language-Objective--C-orange.svg) 
![](https://img.shields.io/badge/download-2.4MB-brightgreen.svg)
![](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg) 

一款 App 在 App Store 上的评分不仅能代表用户对产品的满意程度，而且对 ASO 有着很大的影响。
![](http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/19-1-9/15961467.jpg)

## Advantage 框架的优势
* 1.文件少，代码简洁，版本覆盖全面
* 2.智能自动计算弹窗时机
* 3.具备较高自定义性

## Installation 安装
### 1.手动安装:
`下载Demo后,将功能文件夹拖入到项目中, 导入头文件后开始使用。`
### 2.CocoaPods安装:
修改“Podfile”文件
```
pod "Appirater"
```
控制台执行 Pods 安装命令 （ 简化安装：pod install --no-repo-update ）
```
pod install
```
> 如果 pod search 发现不是最新版本，在终端执行pod setup命令更新本地spec镜像缓存，重新搜索就OK了

## Requirements 要求
* iOS 4+
* Xcode 6+


## Usage 使用方法
### 第一步 引入头文件和定义宏
```
#import <Appirater.h> // Appirater 三方库评分
#import <StoreKit/StoreKit.h> // iOS 10.3 新增评分

#define Version [[UIDevice currentDevice].systemVersion floatValue]
```
### 第二步 简单调用
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 根据 iOS 版本判断使用哪种机制
    Version >= 10.3 ? [SKStoreReviewController requestReview] : [self setupAppirater];
    
    return YES;
}
```
### 第三步 Appirater 实现
```
- (void)setupAppirater {
    [Appirater setAppId:@"YOUR_APP_ID"]; // 设定 App Id，使用者如果点击评分按钮的话，就会打开 AppStore，直接进入这个 App 頁面
    [Appirater setDaysUntilPrompt:1]; // 设定要使用多少天之后才跳出询问框
    [Appirater setUsesUntilPrompt:10]; //设定要使用多少次之后才跳出询问框
    [Appirater setSignificantEventsUntilPrompt:-1]; //设定使用者触发特定事件多少次之后才跳出
    [Appirater setTimeBeforeReminding:2]; //设定使用者选择<稍后>多少天之后再跳出
    [Appirater setDebug:YES]; //是否开启debug模式
    [Appirater appLaunched:YES]; //这行代码一定要放在这个方法的最后面
}
```

## ASO优化--AppStore关键词排名优化规则

　　一款应用在中拥有好的排名，能促进该应用流行的程度，提高下载量。并且一款移动应用在app store中获得良好的排名也能使用ASO优化方法去做，同时使用ASO优化工具作为辅助完成。今天群主就给大家分享AppStore关键词排名优化规则几个关键点。
  
### ASO主要影响因素分析

　　第一是应用名称。
  
　　应用名称对于应用排名的影响就恰似“Title”标签对于网站的影响。毫无疑问，这是对应用排名影响最大的因素之一。但是对于应用名称，却不像网站 的title标签那么容易修改，很多时候名称是早就定好的，很难修改。但是如果有修改的可能的话，你要考虑到用户在应用商城搜索此类应用最常用的关键词。 比如你的应用是中国象棋游戏，而你的应用名字叫做“楚汉之争”，那你的应用将很难在用户搜索“象棋”时排到前列。
  
　　第二是应用的关键字或者标签。
  
　　上传应用时填写的关键字或者标签，就像制作网页时填写的“keywords”标签一样。虽然现在“keywords”标签对于SEO已经没有作用， 但是不可否认它曾经很重要过。而App Store排名规则的发展显然也没有成熟到忽略关键字的地步，所以一定要思考自己应用要设置的关键词。
  
　　第三是应用的描述。
  
　　很多商城还需要区分简要描述和详细描述。简要描述往往显示在应用列表页，详细描述则是应用的重点介绍内容。APP的描述对于应用的推广也是极其重要 的，因为用户在搜索结果列表页看到你的应用时，吸引他们点击进入详情页的就是应用的简介!而且这个因素还将直接跟你应用的搜索结果点击率有关，而搜索结果 点击率也很可能影响你的应用在该搜索结果的排名。
  
　　第四是应用的Icon。
  
　　Icon对于一款应用就好比长相对于一个人。如果想让别人对你的应用有个良好的第一印象，首先就要从设计一个漂亮的Icon开始。而且美观漂亮的Icon可能还会给你带来其他意想不到的好处。
  
　　第五是应用的截图及视频。
  
　　毫无疑问的是，应用详情页里的截图及视频真的会影响应用在排行榜的表现，这得到了一个在某大型第三方应用市场工作的朋友的证实。应用市场也是要考虑用户体验的，如果你的应用连张图都没有，用户会去下载吗?你先想想自己在App Store寻找应用的经验把。
  
　　第六是用户评价。
  
　　这点我想是毫无争议的，而且很多的App Store都提供了按照用户评价排行的选项，虽然评价现在大部分都被水军占领了，所以在中国谈到用户评价，总是有些尴尬……
  
　　第七是应用安装量。
  
　　这就是去年最流行的刷榜方式中利用的因素，通过刷榜使应用获得下载量的高排名，然后利用榜单效应带来大量下载。苹果现在虽然对刷榜进行了严格的审查，但是可以肯定的是应用安装量依然是ASO一个非常重要的因素。
  
　　第八是活跃用户量、活跃用户比例及短期用户留存度等等。
  
　　随着各大应用市场应用排行算法的完善，最终还是要归于“用户体验最好的应用获得最好的排名”的目标上。所以对于任何应用开发者来说，保持产品质量，提高活跃用户数量、活跃用户比例及短期用户留存度等才是最重要的。
  
　　第九是社会化分享的数据。
  
　　社交网络有多强大，不必多说，面对即将到来的网络社会时代，APP Store的排名算法中必然会加入社会化媒体分享数据的影响，这同样毋庸置疑。

使用简单、效率高效、进程安全~~~如果你有更好的建议,希望不吝赐教!


## License 许可证
RSScoreDemo 使用 MIT 许可证，详情见 LICENSE 文件。


## Contact 联系方式:
* WeChat : WhatsXie
* Email : ReverseScale@iCloud.com
* Blog : https://reversescale.github.io
