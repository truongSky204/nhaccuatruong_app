import 'package:nhaccuatruong_app/data/source/source.dart';

import '../model/song.dart';

abstract interface class Repository{
  Future<List<Song>?> loadData();
}

class DefaultRepository implements Repository { // Đúng chính tả
  final _localDataSource = LocalDataSource();
  final _remoteDataSource = RemoteDataSource();

  @override
  Future<List<Song>?> loadData() async {
    List<Song> songs = [];

    // Chờ lấy dữ liệu từ remote
    List<Song>? remoteSongs = await _remoteDataSource.loadData();

    if (remoteSongs == null) {
      // Nếu remote trả về null, lấy dữ liệu từ local
      List<Song>? localSongs = await _localDataSource.loadData();
      if (localSongs != null) {
        songs.addAll(localSongs);
      }
    } else {
      songs.addAll(remoteSongs);
    }

    return songs;
  }
}
