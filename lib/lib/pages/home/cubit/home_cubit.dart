import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_notification_awesome/lib/pages/home/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(LoadingState());

}
