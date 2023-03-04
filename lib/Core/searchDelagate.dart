// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchDel extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            GoRouter.of(context).pop();
          } else {
            query = "";
          }
        },
        icon: const Icon(FontAwesomeIcons.xmark),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => GoRouter.of(context).pop(),
        icon: const Icon(
          FontAwesomeIcons.arrowLeft,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("hello");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text("hello");
  }
}
