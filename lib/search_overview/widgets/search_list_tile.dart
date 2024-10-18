import 'package:flutter/material.dart';
import 'package:pro/api/search/models/data.dart';
import 'package:pro/extensions/widget_extension.dart';

class SearchListTile extends StatelessWidget {
  const SearchListTile({
    required this.oneItem,
    super.key,
  });

  final Data oneItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final captionColor = theme.textTheme.bodySmall?.color;

    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      color: !oneItem.isActive!
          ? theme.colorScheme.outlineVariant
          : theme.colorScheme.surface,
      // surfaceTintColor: theme.colorScheme.onSecondary,
      shadowColor: theme.colorScheme.primary,
      elevation: 3,
      child: SizedBox(
        height: 90,
        child: ListTile(
          title: Text(
            oneItem.nameEn ?? 'Null',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: !oneItem.isActive!
                ? TextStyle(
                    color: captionColor,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w400,
                  )
                : TextStyle(
                    color: captionColor,
                    fontWeight: FontWeight.bold,
                  ),
          ),
          subtitle: Text(
            oneItem.descriptionEn ?? 'Null',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: SizedBox(
            width: 50,
            // height: 50,
            child: ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'http://10.207.252.142:8050${oneItem.imageUrl}',
                errorBuilder: (___, __, _) => Image.network(
                  'https://forum.ionicframework.com/t/get-image-from-url/111974',
                  errorBuilder: (context, error, stackTrace) => Image.asset(
                    'assets/images/tasks.jpg',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),

          // leading: Checkbox(
          //   shape: const ContinuousRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(8)),
          //   ),
          //   value: oneItem.isActive,
          //   onChanged: (value) {},
          // ),
          // trailing: Icon(
          //   Icons.arrow_forward_ios,
          //   color: theme.colorScheme.primary,
          // ),
          trailing: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(8),
              color: oneItem.isActive!
                  ? theme.colorScheme.primary
                  : theme.colorScheme.tertiary,
              child: Text(
                oneItem.isActive! ? 'Active' : 'NotActive',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: oneItem.isActive!
                        ? theme.colorScheme.onInverseSurface
                        : theme.colorScheme.surfaceContainerHighest
                    // : const Color(0XFFfeddaa),
                    ),
              ),
            ),
          ).onlyPadding(top: 24),
        ),
      ),
    );
  }
}
