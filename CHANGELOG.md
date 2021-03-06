## [0.2.1] - 版本更新

- 完善 API 文档

## [0.1.4] - 版本更新

- 修复批量删除的 bug
- 修复地理坐标经度 key 的 bug

## [0.1.3] - 版本更新

- 支持缓存查询（iOS/Android），用法如下：

```dart
// 初始化
LeanCloud.initialize( 'xxx', 'yyy',  server: 'https://zzz.com', queryCache: new LCQueryCache());

// 查询
List<LCObject> list = await query.find(cachePolicy: CachePolicy.networkElseCache);
```

## [0.1.2] - 版本更新

- 支持 iOS/Android 环境下保存登录用户数据
- 重构获取当前用户接口为异步方法

```dart
LCUser currentUser = await LCUser.getCurrent();
```

## [0.1.1] - 版本更新

- 完善时间，时区相关实现
- 完善 Geo 相关接口和实现
- 支持正则查询
- 增加 User-Agent 统计
- 完善单元测试，覆盖了 79.9%

## [0.1.0] - 基础版本

## [0.0.6] - test

## [0.0.5] - test

## [0.0.4] - test

## [0.0.3] - test

## [0.0.2] - 调整依赖库版本

## [0.0.1] - test
