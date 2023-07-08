import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meme_app/core/injector/injector.dart';
import 'package:meme_app/domain/usecases/get_memes.dart';
import 'package:meme_app/presentation/bloc/get_meme_bloc.dart';
import 'package:meme_app/presentation/widgets/meme_card.dart';

const alignWidgetKey = Key('align-widget');
const errorTextKey = Key('error-text');

class MemeAppHome extends StatefulWidget {
  const MemeAppHome({
    super.key,
    this.getMemeBloc,
  });

  final GetMemeBloc? getMemeBloc;

  @override
  State<MemeAppHome> createState() => _MemeAppHomeState();
}

class _MemeAppHomeState extends State<MemeAppHome> {
  late GetMemeBloc _getMemeBloc;

  @override
  void initState() {
    _getMemeBloc = widget.getMemeBloc ??
        GetMemeBloc(
          getMemes: getIt<GetMemes>(),
        );
    super.initState();

    _getMemeBloc.add(const GetMemeEvent.getMemes());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        key: alignWidgetKey,
        alignment: Alignment.center,
        child: BlocProvider(
          create: (context) => _getMemeBloc,
          child: BlocBuilder<GetMemeBloc, GetMemeState>(
            builder: (context, state) {
              if (state.loading) {
                return const CircularProgressIndicator();
              } else if (state.failure != null) {
                return Text(
                  'Error ${state.failure?.message}',
                  key: errorTextKey,
                );
              }

              return Swiper(
                itemBuilder: (BuildContext context, int index) {
                  final meme = state.memes![index];
                  return MemeCard(meme: meme);
                },
                itemCount: state.memes?.length ?? 0,
                control: const SwiperControl(
                  color: Colors.black,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
