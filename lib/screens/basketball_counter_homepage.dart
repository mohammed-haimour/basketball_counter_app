import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constants/colors.dart';
import '../cubit/basketball_counter_cubit.dart';
import '../widgets/my_btn.dart';

class BasketballCounterHomePage extends StatelessWidget {
  const BasketballCounterHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketballCounterCubit, BasketballCounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: myOrange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${(BlocProvider.of<BasketballCounterCubit>(context).teamAPoints < 1000) ? BlocProvider.of<BasketballCounterCubit>(context).teamAPoints : "A"}',
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "A", increaseValue: 1);
                          },
                          innerText: 'Add 1 Point ',
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "A", increaseValue: 2);
                          },
                          innerText: 'Add 2 Point ',
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "A", increaseValue: 3);
                          },
                          innerText: 'Add 3 Point ',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${(BlocProvider.of<BasketballCounterCubit>(context).teamBPoints < 1000) ? BlocProvider.of<BasketballCounterCubit>(context).teamBPoints : 'A'}',
                          style: const TextStyle(
                            fontSize: 100,
                          ),
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "B", increaseValue: 1);
                          },
                          innerText: 'Add 1 Point ',
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "B", increaseValue: 2);
                          },
                          innerText: 'Add 2 Point ',
                        ),
                        MyBtn(
                          onPressed: () {
                            BlocProvider.of<BasketballCounterCubit>(context)
                                .TeamIncreament(
                                    teamName: "B", increaseValue: 3);
                          },
                          innerText: 'Add 3 Point ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              MyBtn(
                onPressed: () {
                  BlocProvider.of<BasketballCounterCubit>(context)
                      .TeamIncreament(teamName: "RESET", increaseValue: 0);
                },
                innerText: 'Reset',
              ),
            ],
          ),
        );
      },
    );
  }
}
