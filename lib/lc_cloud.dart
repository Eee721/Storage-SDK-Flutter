part of leancloud_storage;

/// 云引擎
class LCCloud {
  /// 调用云函数，结果为 Map 类型
  /// [name] 函数名称
  /// [params] 函数参数
  static Future run(String name, {Map<String, dynamic> params}) async {
    String path = 'functions/$name';
    return await LeanCloud._httpClient.post(path, data: params);
  }

  /// RPC 调用云函数，结果反序列化为相应对象
  /// [name] 函数名称
  /// [params] 函数参数
  static Future rpc(String name, {Map<String, dynamic> params}) async {
    String path = 'call/$name';
    Map response = await LeanCloud._httpClient.post(path, data: params);
    return _LCDecoder.decode(response);
  }
}
