import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libdart_dapp/src/core/failures.dart';
import 'package:libdart_dapp/src/core/request.dart';
import 'package:libdart_dapp/src/core/result.dart';
import 'package:libdart_dapp/src/request/get_endpoint.dart';
import 'package:libdart_dapp/src/request/send_transaction.dart';

part 'deeplink.dart';
part 'libdart_dapp_base.freezed.dart';

@freezed
class ArchethicDappConnectionState with _$ArchethicDappConnectionState {
  const ArchethicDappConnectionState._();
  const factory ArchethicDappConnectionState() = _ArchethicDappConnectionState;

  const factory ArchethicDappConnectionState.disconnected() = _Disconnected;
  const factory ArchethicDappConnectionState.connected() = _Connected;
  const factory ArchethicDappConnectionState.connecting() = _Connecting;
}

abstract class ArchethicDAppClient {
  factory ArchethicDAppClient.deeplink({
    required RequestOrigin origin,
    required String replyBaseUrl,
  }) = DeeplinkArchethicDappClient;

  ArchethicDappConnectionState get state;
  RequestOrigin get origin;

  Future<Result<GetEndpointResult, Failure>> getEndpoint();

  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    Map<String, dynamic> data,
  );
}
