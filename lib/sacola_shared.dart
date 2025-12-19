/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

//export 'src/sacola_shared_base.dart';

export 'src/modules/user/data/model/user_model.dart';
export 'src/modules/user/ui/provider/user_provider.dart';

export 'src/core/services/auth_service.dart'; // AuthService
export 'src/modules/generic/ui/bloc/generic_bloc.dart'; // GenericBloc<T>
export 'src/modules/user/data/datasource/user_datasource.dart'; // UserModelRemoteDataSource

export 'src/modules/generic/data/generic_abstract_of_data_source.dart';
export 'src/modules/generic/data/generic_implementation_of_repository.dart';
export 'src/modules/generic/domain/generic_abstract_repository.dart';
export 'src/modules/generic/domain/service.dart';

// TODO: Export any libraries intended for clients of this package.
