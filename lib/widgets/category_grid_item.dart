import 'package:flutter/material.dart';
import 'package:fitness_app/models/category.dart';

import 'package:transparent_image/transparent_image.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
     required this.onSelectCategory,
  });

  final Category category;
    final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: 
          onSelectCategory
        ,
        child: Stack(
          children: [
            Hero(
              tag: category.title,
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage),
                image: const 
                AssetImage('assets/images/gallery.jpg'),
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
             Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      category.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis, // Very long text ...
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

          ]
      )
        
        
      ) )
          ] ))
    );
//     return InkWell(
//       onTap: onSelectCategory,
//       splashColor: Theme.of(context).primaryColor,
//       borderRadius: BorderRadius.circular(16),
      
      
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16),
//             gradient: LinearGradient(
//               colors: [
//                category.color.withOpacity(0.55),
//                 category.color.withOpacity(0.9),
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             )),
//         child: Text(
//           category.title,
//           style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                 color: Theme.of(context).colorScheme.onBackground,
//               ),
//         ),
//       ),
//     );
  }
}