/// 文本转换
class TextTransfer {
  /// 下划线转驼峰，abc_abca_bc->abcAbcaBc
  static String camelName(String name) {
    StringBuffer result = new StringBuffer();
    if (name?.isEmpty != false) {
      return "";
    }
    if (!name.contains("_")) {
      result.write(name.substring(0, 1).toLowerCase());
      result.write(name.substring(1));
      return result.toString();
    }
    List<String> camels = name.split('_');
    for (var camel in camels) {
      if (result.length == 0) {
        result.write(camel.toLowerCase());
      } else {
        if (name?.isNotEmpty == true) {
          result.write(camel.substring(0, 1).toUpperCase());
          result.write(camel.substring(1).toLowerCase());
        }
      }
    }

    return result.toString();
  }
}
