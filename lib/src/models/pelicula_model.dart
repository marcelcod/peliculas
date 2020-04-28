// Generated by https://quicktype.io
class Peliculas{

  List<Pelicula> items= new List();

  Peliculas();

  Peliculas.fromJsonList(List<dynamic> jsonList){

    if (jsonList == null) return ;

     //se encarga de barrer toda las peliculas y lo va almacenar en los Items 
    for (var item in jsonList) {
      
      // se encargar de fragmentarlo por propiedades de cada pelicula
      final pelicula = new Pelicula.fromJsonMap(item);

      items.add(pelicula);
      
    }
  }
}

class Pelicula {
  double popularity;
  int voteCount;
  bool video;
  String posterPath;
  int id;
  bool adult;
  String backdropPath;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;

  Pelicula({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });
 // segmentando por cada propieda de peliculas
  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    
    popularity       = json['popularity']/1;
    voteCount        = json['vote_count'];
    video            = json['video'];
    posterPath       = json['poster_path'];
    id               = json['id'];
    adult            = json['adult'];
    backdropPath     = json['backdrop_path'];
    originalLanguage = json['original_language'];
    originalTitle    = json['original_title'];
    genreIds         = json['genre_ids'].cast<int>();
    title            = json['title'];
    voteAverage      = json['vote_average']/1;
    overview         = json['overview'];
    releaseDate      = json['release_date'];


  }
 // metodo mostrar una imagen
  getPosterImg(){
    
    if (posterPath == null) {

       return 'https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg';
       //https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg
    }
    else {
              // https://image.tmdb.org/t/p/w500/
        return 'https://image.tmdb.org/t/p/w500/$posterPath';

    }

  }


}