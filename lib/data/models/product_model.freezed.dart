// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  ProductModelDimensions get dimensions => throw _privateConstructorUsedError;
  String get warrantyInformation => throw _privateConstructorUsedError;
  String get shippingInformation => throw _privateConstructorUsedError;
  String get availabilityStatus => throw _privateConstructorUsedError;
  List<ProductModelReviews> get reviews => throw _privateConstructorUsedError;
  String get returnPolicy => throw _privateConstructorUsedError;
  int get minimumOrderQuantity => throw _privateConstructorUsedError;
  ProductModelMeta get meta => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String category,
      double price,
      double discountPercentage,
      double rating,
      int stock,
      List<String> tags,
      String sku,
      int weight,
      ProductModelDimensions dimensions,
      String warrantyInformation,
      String shippingInformation,
      String availabilityStatus,
      List<ProductModelReviews> reviews,
      String returnPolicy,
      int minimumOrderQuantity,
      ProductModelMeta meta,
      List<String> images,
      String thumbnail});

  $ProductModelDimensionsCopyWith<$Res> get dimensions;
  $ProductModelMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? sku = null,
    Object? weight = null,
    Object? dimensions = null,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      dimensions: null == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as ProductModelDimensions,
      warrantyInformation: null == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String,
      shippingInformation: null == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityStatus: null == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ProductModelReviews>,
      returnPolicy: null == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      minimumOrderQuantity: null == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ProductModelMeta,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelDimensionsCopyWith<$Res> get dimensions {
    return $ProductModelDimensionsCopyWith<$Res>(_value.dimensions, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelMetaCopyWith<$Res> get meta {
    return $ProductModelMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String category,
      double price,
      double discountPercentage,
      double rating,
      int stock,
      List<String> tags,
      String sku,
      int weight,
      ProductModelDimensions dimensions,
      String warrantyInformation,
      String shippingInformation,
      String availabilityStatus,
      List<ProductModelReviews> reviews,
      String returnPolicy,
      int minimumOrderQuantity,
      ProductModelMeta meta,
      List<String> images,
      String thumbnail});

  @override
  $ProductModelDimensionsCopyWith<$Res> get dimensions;
  @override
  $ProductModelMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? sku = null,
    Object? weight = null,
    Object? dimensions = null,
    Object? warrantyInformation = null,
    Object? shippingInformation = null,
    Object? availabilityStatus = null,
    Object? reviews = null,
    Object? returnPolicy = null,
    Object? minimumOrderQuantity = null,
    Object? meta = null,
    Object? images = null,
    Object? thumbnail = null,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      dimensions: null == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as ProductModelDimensions,
      warrantyInformation: null == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String,
      shippingInformation: null == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityStatus: null == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ProductModelReviews>,
      returnPolicy: null == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      minimumOrderQuantity: null == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ProductModelMeta,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required final List<String> tags,
      required this.sku,
      required this.weight,
      required this.dimensions,
      required this.warrantyInformation,
      required this.shippingInformation,
      required this.availabilityStatus,
      required final List<ProductModelReviews> reviews,
      required this.returnPolicy,
      required this.minimumOrderQuantity,
      required this.meta,
      required final List<String> images,
      required this.thumbnail})
      : _tags = tags,
        _reviews = reviews,
        _images = images;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final double rating;
  @override
  final int stock;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String sku;
  @override
  final int weight;
  @override
  final ProductModelDimensions dimensions;
  @override
  final String warrantyInformation;
  @override
  final String shippingInformation;
  @override
  final String availabilityStatus;
  final List<ProductModelReviews> _reviews;
  @override
  List<ProductModelReviews> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final String returnPolicy;
  @override
  final int minimumOrderQuantity;
  @override
  final ProductModelMeta meta;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String thumbnail;

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        category,
        price,
        discountPercentage,
        rating,
        stock,
        const DeepCollectionEquality().hash(_tags),
        sku,
        weight,
        dimensions,
        warrantyInformation,
        shippingInformation,
        availabilityStatus,
        const DeepCollectionEquality().hash(_reviews),
        returnPolicy,
        minimumOrderQuantity,
        meta,
        const DeepCollectionEquality().hash(_images),
        thumbnail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final int id,
      required final String title,
      required final String description,
      required final String category,
      required final double price,
      required final double discountPercentage,
      required final double rating,
      required final int stock,
      required final List<String> tags,
      required final String sku,
      required final int weight,
      required final ProductModelDimensions dimensions,
      required final String warrantyInformation,
      required final String shippingInformation,
      required final String availabilityStatus,
      required final List<ProductModelReviews> reviews,
      required final String returnPolicy,
      required final int minimumOrderQuantity,
      required final ProductModelMeta meta,
      required final List<String> images,
      required final String thumbnail}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get category;
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  double get rating;
  @override
  int get stock;
  @override
  List<String> get tags;
  @override
  String get sku;
  @override
  int get weight;
  @override
  ProductModelDimensions get dimensions;
  @override
  String get warrantyInformation;
  @override
  String get shippingInformation;
  @override
  String get availabilityStatus;
  @override
  List<ProductModelReviews> get reviews;
  @override
  String get returnPolicy;
  @override
  int get minimumOrderQuantity;
  @override
  ProductModelMeta get meta;
  @override
  List<String> get images;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModelDimensions _$ProductModelDimensionsFromJson(
    Map<String, dynamic> json) {
  return _ProductModelDimensions.fromJson(json);
}

/// @nodoc
mixin _$ProductModelDimensions {
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelDimensionsCopyWith<ProductModelDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDimensionsCopyWith<$Res> {
  factory $ProductModelDimensionsCopyWith(ProductModelDimensions value,
          $Res Function(ProductModelDimensions) then) =
      _$ProductModelDimensionsCopyWithImpl<$Res, ProductModelDimensions>;
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class _$ProductModelDimensionsCopyWithImpl<$Res,
        $Val extends ProductModelDimensions>
    implements $ProductModelDimensionsCopyWith<$Res> {
  _$ProductModelDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelDimensionsImplCopyWith<$Res>
    implements $ProductModelDimensionsCopyWith<$Res> {
  factory _$$ProductModelDimensionsImplCopyWith(
          _$ProductModelDimensionsImpl value,
          $Res Function(_$ProductModelDimensionsImpl) then) =
      __$$ProductModelDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double width, double height, double depth});
}

/// @nodoc
class __$$ProductModelDimensionsImplCopyWithImpl<$Res>
    extends _$ProductModelDimensionsCopyWithImpl<$Res,
        _$ProductModelDimensionsImpl>
    implements _$$ProductModelDimensionsImplCopyWith<$Res> {
  __$$ProductModelDimensionsImplCopyWithImpl(
      _$ProductModelDimensionsImpl _value,
      $Res Function(_$ProductModelDimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? depth = null,
  }) {
    return _then(_$ProductModelDimensionsImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelDimensionsImpl implements _ProductModelDimensions {
  const _$ProductModelDimensionsImpl(
      {required this.width, required this.height, required this.depth});

  factory _$ProductModelDimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelDimensionsImplFromJson(json);

  @override
  final double width;
  @override
  final double height;
  @override
  final double depth;

  @override
  String toString() {
    return 'ProductModelDimensions(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelDimensionsImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelDimensionsImplCopyWith<_$ProductModelDimensionsImpl>
      get copyWith => __$$ProductModelDimensionsImplCopyWithImpl<
          _$ProductModelDimensionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelDimensionsImplToJson(
      this,
    );
  }
}

abstract class _ProductModelDimensions implements ProductModelDimensions {
  const factory _ProductModelDimensions(
      {required final double width,
      required final double height,
      required final double depth}) = _$ProductModelDimensionsImpl;

  factory _ProductModelDimensions.fromJson(Map<String, dynamic> json) =
      _$ProductModelDimensionsImpl.fromJson;

  @override
  double get width;
  @override
  double get height;
  @override
  double get depth;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelDimensionsImplCopyWith<_$ProductModelDimensionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductModelReviews _$ProductModelReviewsFromJson(Map<String, dynamic> json) {
  return _ProductModelReviews.fromJson(json);
}

/// @nodoc
mixin _$ProductModelReviews {
  int get rating => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get reviewerName => throw _privateConstructorUsedError;
  String get reviewerEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelReviewsCopyWith<ProductModelReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelReviewsCopyWith<$Res> {
  factory $ProductModelReviewsCopyWith(
          ProductModelReviews value, $Res Function(ProductModelReviews) then) =
      _$ProductModelReviewsCopyWithImpl<$Res, ProductModelReviews>;
  @useResult
  $Res call(
      {int rating,
      String comment,
      String date,
      String reviewerName,
      String reviewerEmail});
}

/// @nodoc
class _$ProductModelReviewsCopyWithImpl<$Res, $Val extends ProductModelReviews>
    implements $ProductModelReviewsCopyWith<$Res> {
  _$ProductModelReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelReviewsImplCopyWith<$Res>
    implements $ProductModelReviewsCopyWith<$Res> {
  factory _$$ProductModelReviewsImplCopyWith(_$ProductModelReviewsImpl value,
          $Res Function(_$ProductModelReviewsImpl) then) =
      __$$ProductModelReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int rating,
      String comment,
      String date,
      String reviewerName,
      String reviewerEmail});
}

/// @nodoc
class __$$ProductModelReviewsImplCopyWithImpl<$Res>
    extends _$ProductModelReviewsCopyWithImpl<$Res, _$ProductModelReviewsImpl>
    implements _$$ProductModelReviewsImplCopyWith<$Res> {
  __$$ProductModelReviewsImplCopyWithImpl(_$ProductModelReviewsImpl _value,
      $Res Function(_$ProductModelReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? comment = null,
    Object? date = null,
    Object? reviewerName = null,
    Object? reviewerEmail = null,
  }) {
    return _then(_$ProductModelReviewsImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerEmail: null == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelReviewsImpl implements _ProductModelReviews {
  const _$ProductModelReviewsImpl(
      {required this.rating,
      required this.comment,
      required this.date,
      required this.reviewerName,
      required this.reviewerEmail});

  factory _$ProductModelReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelReviewsImplFromJson(json);

  @override
  final int rating;
  @override
  final String comment;
  @override
  final String date;
  @override
  final String reviewerName;
  @override
  final String reviewerEmail;

  @override
  String toString() {
    return 'ProductModelReviews(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelReviewsImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rating, comment, date, reviewerName, reviewerEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelReviewsImplCopyWith<_$ProductModelReviewsImpl> get copyWith =>
      __$$ProductModelReviewsImplCopyWithImpl<_$ProductModelReviewsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelReviewsImplToJson(
      this,
    );
  }
}

abstract class _ProductModelReviews implements ProductModelReviews {
  const factory _ProductModelReviews(
      {required final int rating,
      required final String comment,
      required final String date,
      required final String reviewerName,
      required final String reviewerEmail}) = _$ProductModelReviewsImpl;

  factory _ProductModelReviews.fromJson(Map<String, dynamic> json) =
      _$ProductModelReviewsImpl.fromJson;

  @override
  int get rating;
  @override
  String get comment;
  @override
  String get date;
  @override
  String get reviewerName;
  @override
  String get reviewerEmail;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelReviewsImplCopyWith<_$ProductModelReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModelMeta _$ProductModelMetaFromJson(Map<String, dynamic> json) {
  return _ProductModelMeta.fromJson(json);
}

/// @nodoc
mixin _$ProductModelMeta {
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelMetaCopyWith<ProductModelMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelMetaCopyWith<$Res> {
  factory $ProductModelMetaCopyWith(
          ProductModelMeta value, $Res Function(ProductModelMeta) then) =
      _$ProductModelMetaCopyWithImpl<$Res, ProductModelMeta>;
  @useResult
  $Res call(
      {String createdAt, String updatedAt, String barcode, String qrCode});
}

/// @nodoc
class _$ProductModelMetaCopyWithImpl<$Res, $Val extends ProductModelMeta>
    implements $ProductModelMetaCopyWith<$Res> {
  _$ProductModelMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelMetaImplCopyWith<$Res>
    implements $ProductModelMetaCopyWith<$Res> {
  factory _$$ProductModelMetaImplCopyWith(_$ProductModelMetaImpl value,
          $Res Function(_$ProductModelMetaImpl) then) =
      __$$ProductModelMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String createdAt, String updatedAt, String barcode, String qrCode});
}

/// @nodoc
class __$$ProductModelMetaImplCopyWithImpl<$Res>
    extends _$ProductModelMetaCopyWithImpl<$Res, _$ProductModelMetaImpl>
    implements _$$ProductModelMetaImplCopyWith<$Res> {
  __$$ProductModelMetaImplCopyWithImpl(_$ProductModelMetaImpl _value,
      $Res Function(_$ProductModelMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? barcode = null,
    Object? qrCode = null,
  }) {
    return _then(_$ProductModelMetaImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelMetaImpl implements _ProductModelMeta {
  const _$ProductModelMetaImpl(
      {required this.createdAt,
      required this.updatedAt,
      required this.barcode,
      required this.qrCode});

  factory _$ProductModelMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelMetaImplFromJson(json);

  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String barcode;
  @override
  final String qrCode;

  @override
  String toString() {
    return 'ProductModelMeta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelMetaImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelMetaImplCopyWith<_$ProductModelMetaImpl> get copyWith =>
      __$$ProductModelMetaImplCopyWithImpl<_$ProductModelMetaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelMetaImplToJson(
      this,
    );
  }
}

abstract class _ProductModelMeta implements ProductModelMeta {
  const factory _ProductModelMeta(
      {required final String createdAt,
      required final String updatedAt,
      required final String barcode,
      required final String qrCode}) = _$ProductModelMetaImpl;

  factory _ProductModelMeta.fromJson(Map<String, dynamic> json) =
      _$ProductModelMetaImpl.fromJson;

  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get barcode;
  @override
  String get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelMetaImplCopyWith<_$ProductModelMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
