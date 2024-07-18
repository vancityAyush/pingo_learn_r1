import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pingo_learn_r1/domain/entities/product.dart';
import 'package:pingo_learn_r1/presentation/providers/product_provider.dart';
import 'package:pingo_learn_r1/presentation/providers/remote_config_provider.dart';
import 'package:provider/provider.dart';

import '../../core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ProductProvider>(context, listen: false).loadInitialProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'e-Shop',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          return PagedGridView(
            padding: const EdgeInsets.all(8),
            pagingController: provider.paginationController,
            builderDelegate: PagedChildBuilderDelegate<Product>(
              itemBuilder: (context, item, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        child: CachedNetworkImage(
                          imageUrl: item.thumbnail,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        item.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        item.description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      12.verticalSpace,
                      Consumer<RemoteConfigProvider>(
                        builder: (context, provider, child) {
                          if (!provider.displayDiscountedPrice) {
                            return Text(
                              '\$${item.price}',
                              style: Theme.of(context).textTheme.bodySmall,
                            );
                          }
                          return RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$${item.price}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                      ),
                                ),
                                TextSpan(
                                  text:
                                      ' \$${item.discountedPrice.toStringAsFixed(2)}',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: '   ${item.discountPercentage}%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                );
              },
              noMoreItemsIndicatorBuilder: (context) =>
                  const Text('No more items'),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 18,
              childAspectRatio: 0.6,
            ),
          );
        },
      ),
    );
  }
}
