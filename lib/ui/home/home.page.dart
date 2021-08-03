import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './cubit/cubit.dart';
import '../../ui/ui.dart';
import '../../utils/utils.dart';
import '../../theme/theme.dart';
import './constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return DracoScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpacerSymmetric(height: kHeightL),
          Expanded(
              child: Text(
            titleOnboard1,
            textAlign: TextAlign.center,
            style: getTextTheme.headline4,
          )),
          Expanded(
            flex: 2,
            child: Text(descriptionOnboard1,
                style: getTextTheme.bodyText2, textAlign: TextAlign.center),
          ),
          Expanded(flex: 4, child: Image.asset(pathImageOnboard1)),
          BlocConsumer<HomeCubit, HomeState>(
            bloc: homeCubit,
            listener: (context, state) {
              if (state.status == HomeStatus.nextPage) {
                Navigator.pushReplacementNamed(context, '/tasks');
              }
            },
            builder: (context, state) {
              if (state.status == HomeStatus.loading) {
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  dracoLoadingDialog(context);
                });
              }
              if (state.status == HomeStatus.failure) {
                WidgetsBinding.instance!.addPostFrameCallback((_) {
                  showAlertDialog(
                      context: context,
                      actions: [
                        Container(
                          alignment: Alignment.bottomRight,
                          child: ButtonDraco(
                            btnText: understand,
                            functionButton: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                      content: Text(popUpDescription),
                      title: Text(popUpTitle));
                });
              }
              return Expanded(
                child: ButtonDraco(
                  btnText: buttonOnboard1,
                  colorButton: Theme.of(context).primaryColor,
                  functionButton: () async {
                    await homeCubit.createDataBase();
                  },
                ),
              );
            },
          ),
          SpacerSymmetric(height: kHeightM)
        ],
      ),
    );
  }
}
