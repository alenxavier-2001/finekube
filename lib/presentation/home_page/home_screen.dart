import 'dart:developer';

import 'package:finekube/application/home/home_bloc.dart';
import 'package:finekube/domain/home/home_service.dart';
import 'package:finekube/infrastructure/home/home_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const LoadDataInHome());
    });
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          snap: false,
          expandedHeight: height / 3,
          backgroundColor: const Color.fromARGB(255, 207, 231, 251),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: width / 16,
                    ),
                    SizedBox(
                      width: width / 5,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontSize: width / 17, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: width / 5,
                    ),
                    IconButton(
                        onPressed: () {
                          HomeImplementation().getHomeData();
                        },
                        icon: const Icon(Icons.notifications))
                  ],
                ),
                SizedBox(
                  height: height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TopWidget(
                      color: Color.fromARGB(255, 99, 198, 102),
                    ),
                    TopWidget(
                      color: Color.fromARGB(255, 228, 131, 124),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        /*ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  minLeadingWidth: width / 10,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: width / 15,
                  ),
                  title: Text(
                    "Name",
                    style: TextStyle(
                        fontSize: width / 18, fontWeight: FontWeight.w700),
                  ),
                ),
              );
            }),*/
        /*BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.hasError) {
              return const Center(
                child: Text("Error Occur"),
              );
            } else if (state.dataList.isEmpty) {
              return const Center(
                child: Text("Coming soon list is empty"),
              );
            } else {
              return */
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<HomeBloc>(context).add(const LoadDataInHome());
              },
              child: Expanded(
                child: SizedBox(
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        );
                      } else if (state.hasError) {
                        return const Center(
                          child: Text("Error Occur"),
                        );
                      } else if (state.dataList.isEmpty) {
                        return const Center(
                          child: Text("Coming soon list is empty"),
                        );
                      } else {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.dataList.length,
                            itemBuilder: (context, index) {
                              final item = state.dataList[index];
                              return SizedBox(
                                child: ListWidget(
                                  imgurl: item.img ?? "",
                                  name: item.name ?? "",
                                ),
                              );
                            });
                      }
                    },
                  ),
                ),
              ),
            ),
            childCount: 1,
          ),
        ) /*
            }
          },
        )*/
      ],
    ));
  }
}

class ListWidget extends StatelessWidget {
  final String name;
  final String imgurl;
  const ListWidget({
    required this.name,
    required this.imgurl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        minLeadingWidth: width / 10,
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          backgroundImage: (imgurl.isEmpty) ? null : NetworkImage(imgurl),
          radius: width / 15,
        ),
        title: Text(
          name,
          style: TextStyle(fontSize: width / 18, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 2.5,
      height: height / 4.5,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
    );
  }
}
