import 'package:flutter/material.dart';


class BioWidget extends StatelessWidget {
  const BioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, repellendus eaque provident soluta quibusdam quae. Earum autem molestias repellendus harum distinctio voluptatum architecto impedit commodi reiciendis. Ab hic quae vitae.',
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

