import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    print(moviesProvider.onDisplayMovies);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Peliculas en cines'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Tarjetas principales
              CardSwiper(movies: moviesProvider.onDisplayMovies),

              //Slider de peliculas
              const MovieSlider(),
            ],
          ),
        ));
  }
}
