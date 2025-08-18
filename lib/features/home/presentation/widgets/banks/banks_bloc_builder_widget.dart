import 'package:black_market/features/home/presentation/widgets/banks/banks_container_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../data/models/banks_response_model.dart';
import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';

class BanksBlocBuilderWidget extends StatefulWidget {
  const BanksBlocBuilderWidget({super.key});

  @override
  State<BanksBlocBuilderWidget> createState() => _BanksBlocBuilderWidgetState();
}

class _BanksBlocBuilderWidgetState extends State<BanksBlocBuilderWidget> {
  List<BanksResponseModel> banksList = [];

  Future<void> loadBanksData() async {
    try {
      var banksBox = await Hive.openBox<List>(kBanksBox);
      var banksData = banksBox.get(kBanksData);
      if (banksData != null && banksData.isNotEmpty) {
        setState(() {
          banksList = banksData.cast<BanksResponseModel>().toList();
        });
      } else {
        context.read<HomeCubit>().getBanksList();
      }
    } catch (e) {
      debugPrint("Error loading Banks data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    loadBanksData();
    context.read<HomeCubit>().stream.listen((state) async {
      if (state is BanksSuccess) {
        final newBanks = state.maybeWhen(
          orElse: () => [],
          banksSuccess: (banks) => banks,
        );

        var banksBox = await Hive.openBox<List>(kBanksBox);
        await banksBox.put(kBanksData, newBanks);

        setState(() {
          banksList = newBanks;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final banks = banksList ?? [];
        return banksList.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.05 / 1,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: banks.length,
                itemBuilder: (context, index) {
                  final bank = banks[index];
                  return BanksContainerSingleItem(
                    bank: bank,
                  );
                },
              );
      },
    );
  }
}
