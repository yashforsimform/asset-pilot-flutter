part of 'my_devices_cubit.dart';

@immutable
class MyDevicesState extends Equatable {
  const MyDevicesState({this.devices = const Idle()});

  final NetworkState<List<RequestResDm>> devices;

  MyDevicesState copyWith({NetworkState<List<RequestResDm>>? devices}) {
    return MyDevicesState(devices: devices ?? this.devices);
  }

  @override
  List<Object?> get props => [devices];
}
