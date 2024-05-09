import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:sdugram_core/config.dart';
import 'package:sdugram_tickets/src/common/data/sources/ticket_source.dart';

import '../data/services/ticket_service.dart';
import '../domain/behaviors/fetch_tickets_behavior.dart';

@module
abstract class TicketsModule {

  @factoryMethod
  TicketSource homeSource(
      @Named('protected-dio') Dio dio,
      EnvironmentConfig repositoryConfig,
      ) =>
      TicketSource(
        dio,
        baseUrl: '${repositoryConfig.baseUrl}/api',
      );

  @factoryMethod
  FetchTicketsBehavior fetchArticleBehavior(
      TicketService ticketService,
      ) =>
      ticketService;
}