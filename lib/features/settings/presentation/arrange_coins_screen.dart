import 'package:black_market/core/theming/app_string.dart';
import 'package:black_market/core/widgets/app_custom_app_bar.dart';
import 'package:black_market/features/profile/logic/profile_state.dart';
import 'package:black_market/features/settings/presentation/widgets/arrange_coins_container.dart';
import 'package:black_market/features/settings/presentation/widgets/arrange_note_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../core/utils/app_constants.dart';
import '../../profile/data/models/countries_response_model.dart';
import '../../profile/logic/profile_cubit.dart';

class ArrangeCoinsScreen extends StatefulWidget {
  const ArrangeCoinsScreen({super.key});

  @override
  State<ArrangeCoinsScreen> createState() => _ArrangeCoinsScreenState();
}

class _ArrangeCoinsScreenState extends State<ArrangeCoinsScreen> {
  List<CountriesResponseModel> _countries = [];

  Future<void> _loadCountriesData() async {
    try {
      var countriesBox = await Hive.openBox<List>(kCountriesBox);
      var countriesData = countriesBox.get(kCountriesData);
      if (countriesData != null) {
        setState(() {
          _countries = countriesData.cast<CountriesResponseModel>().toList();
        });
      } else {
        context.read<ProfileCubit>().getCountries();
      }
    } catch (e) {
      debugPrint("Error loading countries data: $e");
    }
  }

  Future<void> _saveCountriesData() async {
    var countriesBox = await Hive.openBox<List>(kCountriesBox);
    await countriesBox.put(kCountriesData, _countries);
  }

  @override
  void initState() {
    super.initState();
    _loadCountriesData();
    context.read<ProfileCubit>().stream.listen((state) async {
      if (state is CountriesSuccess) {
        setState(() {
          _countries = state.maybeWhen(
              orElse: () => [], countriesSuccess: (countries) => countries);
        });
        await _saveCountriesData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppString.arrangeCoins),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArrangeNoteContainerWidget(
            title: AppString.selectArrangeCoins,
          ),
          _countries.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Expanded(
                  child: ReorderableListView.builder(
                    itemCount: _countries.length,
                    physics: BouncingScrollPhysics(),
                    onReorder: (oldIndex, newIndex) async {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      final item = _countries.removeAt(oldIndex);
                      _countries.insert(newIndex, item);

                      setState(() {});
                      await _saveCountriesData();
                    },
                    itemBuilder: (context, index) {
                      final country = _countries[index];
                      return ArrangeCoinsContainer(
                        data: country,
                        key: ValueKey(country.code),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
