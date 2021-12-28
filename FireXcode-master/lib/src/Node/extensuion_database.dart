extension NodeGenerate on String {
  String toLongText(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: String ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''} \n }';
  }

  String toInteger(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Number ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toBoolean(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Boolean ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toDouble(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Doubl, ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toArrays(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Arrays ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toTimestamp(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Timestamp ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toObject({List<dynamic> list}) {
    return '$this: { type: Object, properties : ${list.toList().toString().replaceFirst('[', "{").replaceFirst('[', "}")}  }}';
  }

  String toNull(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Null ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toSymbol(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Symbol ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toDate(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Date ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toObjectID(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Object ID ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toBinaryData(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Binary data ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }

  String toCode(
      {bool isRequired = false,
      bool isUnique = false,
      bool isIndex = false,
      String defaults}) {
    return '$this: { type: Code ${isRequired ? ',required: true' : ''}${isUnique ? ',unique: true' : ''}${isIndex ? ',index: true' : ''}${defaults != null ? ',defaults: $defaults' : ''}  \n }';
  }
}
