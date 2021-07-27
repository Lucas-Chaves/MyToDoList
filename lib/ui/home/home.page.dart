import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/ui/home/cubit/cubit.dart';
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

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
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
                    print("Next Page Dude");
                  }
                },
                builder: (context, state) {
                  if (state.status == HomeStatus.loading) {
                    return CircularProgressIndicator();
                  }
                  if (state.status == HomeStatus.failure) {
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      showAlertDialog(
                          context: context,
                          actions: [
                            Container(
                              alignment: Alignment.bottomRight,
                              child: MyButton(
                                btnText: "Entendi",
                                functionButton: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                          content: Text(
                              "Parece que o cachorro comeu seu bloco de notas, tente novamente."),
                          title: Text("Algo errado"));
                    });
                  }
                  return Expanded(
                    child: MyButton(
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
        ),
      ),
    );
  }
}
