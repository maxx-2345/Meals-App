import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters!'),
      ),

      body:
        Column(
          children: [
            SwitchListTile(
              value: activeFilters[Filter.glutenFree]!,
              onChanged: (isChecked) {
               ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, isChecked);
              },
              title: Text(
                'Gluten-free',
                style: TextTheme.of(context)
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only includes gluten free meals!',
                style: TextTheme.of(context)
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: activeFilters[Filter.lactoseFree]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, isChecked);
              },
              title: Text(
                'Lactose-free',
                style: TextTheme.of(context)
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only includes lactose free meals!',
                style: TextTheme.of(context)
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: activeFilters[Filter.vegetarian]!,
              onChanged: (isChecked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, isChecked);
              },
              title: Text(
                'Vegetarian',
                style: TextTheme.of(context)
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only includes vegetarian meals!',
                style: TextTheme.of(context)
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: activeFilters[Filter.vegan]!,
              onChanged: (isChecked) {
                ref.read(filtersProvider.notifier).setFilter(Filter.vegan, isChecked);
              },
              title: Text(
                'Vegan',
                style: TextTheme.of(context)
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              subtitle: Text(
                'Only includes vegan meals!',
                style: TextTheme.of(context)
                    .labelMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      );
  }
}
