/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

// ============================================================================
// CORE
// ============================================================================
export 'src/core/services/auth_service.dart';

// ============================================================================
// GENERIC (Architecture base)
// ============================================================================
export 'src/modules/generic/data/generic_abstract_of_data_source.dart';
export 'src/modules/generic/data/generic_implementation_of_repository.dart';
export 'src/modules/generic/domain/generic_abstract_repository.dart';
export 'src/modules/generic/domain/service.dart';
export 'src/modules/generic/ui/bloc/generic_bloc.dart';

// ============================================================================
// USER MODULE
// ============================================================================
export 'src/modules/user/data/model/user_model.dart';
export 'src/modules/user/data/datasource/user_datasource.dart';
export 'src/modules/user/provider/user_provider.dart';

// ============================================================================
// SELLER MODULE
// ============================================================================
export 'src/modules/seller/data/model/seller_model.dart';
export 'src/modules/seller/data/datasource/seller_datasource.dart';
export 'src/modules/seller/provider/seller_provider.dart';

// ============================================================================
// STORE MODULE
// ============================================================================
export 'src/modules/store/data/model/store_model.dart';
export 'src/modules/store/data/datasource/store_datasource.dart';
export 'src/modules/store/provider/store_provider.dart';

// ============================================================================
// PRODUCT MODULE
// ============================================================================
export 'src/modules/product/data/model/product_model.dart';
export 'src/modules/product/data/datasource/product_datasource.dart';
export 'src/modules/product/provider/product_provider.dart';

// ============================================================================
// CATEGORY MODULE
// ============================================================================
export 'src/modules/category/data/model/category_model.dart';
export 'src/modules/category/data/datasource/category_datasource.dart';
export 'src/modules/category/provider/category_provider.dart';
