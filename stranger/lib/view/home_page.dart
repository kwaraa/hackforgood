// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:stranger/view/home_page_viewmodel.dart';
//
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<SearchState, HomeScreenViewModel>(
//       converter: (store) {
//         return HomeScreenViewModel(
//           state: store.state,
//           onTextChanged: (term) => store.dispatch(SearchAction(term)),
//         );
//       },
//       builder: (BuildContext context, HomeScreenViewModel vm) {
//         return Scaffold(
//           body: Flex(direction: Axis.vertical, children: <Widget>[
//             Container(
//               padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 4.0),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   hintText: 'Search Github...',
//                 ),
//                 style: TextStyle(
//                   fontSize: 36.0,
//                   fontFamily: 'Hind',
//                   decoration: TextDecoration.none,
//                 ),
//                 onChanged: vm.onTextChanged,
//               ),
//             ),
//             Expanded(
//               child: AnimatedSwitcher(
//                 duration: Duration(milliseconds: 500),
//                 child: _buildVisible(vm.state),
//               ),
//             )
//           ]),
//         );
//       },
//     );
//   }
//
//   Widget _buildVisible(SearchState state) {
//     if (state is SearchLoading) {
//       return SearchLoadingView();
//     } else if (state is SearchEmpty) {
//       return SearchEmptyView();
//     } else if (state is SearchPopulated) {
//       return SearchPopulatedView(state.result);
//     } else if (state is SearchInitial) {
//       return SearchInitialView();
//     } else if (state is SearchError) {
//       return SearchErrorWidget();
//     }
//
//     throw ArgumentError('No view for state: $state');
//   }
// }