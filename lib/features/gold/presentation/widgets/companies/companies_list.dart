import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/companies_response_model.dart';
import '../../../logic/gold_cubit.dart';
import '../../../logic/gold_state.dart';
import 'companies_single_item.dart';

class CompaniesList extends StatefulWidget {
  const CompaniesList({super.key});

  @override
  State<CompaniesList> createState() => _CompaniesListState();
}

class _CompaniesListState extends State<CompaniesList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoldCubit, GoldState>(
      buildWhen: (previous, current) {
        return current is CompaniesLoading ||
            current is CompaniesSuccess ||
            current is CompaniesFailure;
      },
      builder: (context, state) {
        return state.maybeWhen(
          companiesLoading: () => setupLoading(),
          companiesSuccess: (companies) {
            final cubit = context.read<GoldCubit>();

            if (cubit.selectedCompany == null && companies.isNotEmpty) {
              cubit.selectCompany(companies.first);
            }
            return setupSuccess(companies, context, cubit.selectedCompany);
          },
          companiesFailure: (errorMessage) => setupError(errorMessage),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Center setupError(String errorMessage) {
    return Center(
      child: Text(
        errorMessage,
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  SingleChildScrollView setupSuccess(companies, BuildContext context,
      CompaniesResponseModel? selectedCompany) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          children: List.generate(
            companies.length,
            (index) {
              final isSelected = selectedCompany?.id == companies[index].id;

              return GestureDetector(
                onTap: () {
                  context.read<GoldCubit>().selectCompany(companies[index]);
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CompaniesSingleItem(
                    companiesResponseModel: companies[index],
                    isSelected: isSelected,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Center setupLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
