//@GeneratedMicroModule;SdugramTicketsPackageModule;package:sdugram_tickets/src/common/config/injectable_config.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:dio/dio.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;
import 'package:sdugram_core/config.dart' as _i5;
import 'package:sdugram_tickets/src/common/config/tickets_module.dart' as _i11;
import 'package:sdugram_tickets/src/common/data/services/ticket_service.dart'
    as _i6;
import 'package:sdugram_tickets/src/common/data/sources/ticket_source.dart'
    as _i3;
import 'package:sdugram_tickets/src/common/domain/behaviors/fetch_tickets_behavior.dart'
    as _i7;
import 'package:sdugram_tickets/src/common/domain/use_cases/fetch_tickets_use_case.dart'
    as _i8;
import 'package:sdugram_tickets/src/common/presentation/blocs/inactive/ticket_inactive_bloc.dart'
    as _i10;
import 'package:sdugram_tickets/src/common/presentation/blocs/ticket_bloc.dart'
    as _i9;

class SdugramTicketsPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final ticketsModule = _$TicketsModule();
    gh.factory<_i3.TicketSource>(() => ticketsModule.homeSource(
          gh<_i4.Dio>(instanceName: 'protected-dio'),
          gh<_i5.EnvironmentConfig>(),
        ));
    gh.lazySingleton<_i6.TicketService>(
        () => _i6.TicketService(homeSource: gh<_i3.TicketSource>()));
    gh.factory<_i7.FetchTicketsBehavior>(
        () => ticketsModule.fetchArticleBehavior(gh<_i6.TicketService>()));
    gh.factory<_i8.FetchTicketsUseCase>(
        () => _i8.FetchTicketsUseCase(gh<_i7.FetchTicketsBehavior>()));
    gh.factory<_i9.TicketBloc>(
        () => _i9.TicketBloc(gh<_i8.FetchTicketsUseCase>()));
    gh.factory<_i10.TicketInactiveBloc>(
        () => _i10.TicketInactiveBloc(gh<_i8.FetchTicketsUseCase>()));
  }
}

class _$TicketsModule extends _i11.TicketsModule {}
