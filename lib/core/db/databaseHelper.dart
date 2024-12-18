import 'package:chajaba/feature/main/model/main/main.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  /// 데이터베이스 인스턴스를 가져오거나 새로운 인스턴스를 초기화합니다.
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  /// 데이터베이스를 초기화하고 'parking_location' 테이블이 없으면 생성합니다.
  Future<Database> initDatabase() async {
    // 데이터베이스 파일 경로를 얻어옵니다 ('chajaba.db').
    String path = join(await getDatabasesPath(), 'chajaba.db');
    // 지정된 버전 및 생성 콜백으로 데이터베이스를 엽니다.
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        // 'parking_location' 테이블을 생성하는 SQL 쿼리를 실행합니다.
        await db.execute('''
          CREATE TABLE parking_location(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            address TEXT,
            parking_image TEXT,
            parking_type TEXT,
            is_repeat BOOLEAN,
            floor TEXT,
            section TEXT,
            days TEXT,
            start_time TEXT,
            end_time TEXT
          )
        ''');
      },
    );
  }

  //MARK: - parking_location
  Future<List<ParkingLocation>> getParkingLocations() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('parking_location');
    return List.generate(maps.length, (i) => ParkingLocation.fromMap(maps[i]));
  }

  Future<ParkingLocation> getParkingLocation(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('parking_location', where: 'id = ?', whereArgs: [id]);
    return ParkingLocation.fromMap(maps[0]);
  }

  Future<void> insertParkingLocation(ParkingLocation parkingLocation) async {
    final db = await database;
    await db.insert('parking_location', parkingLocation.toMap());
  }

  Future<void> updateParkingLocation(ParkingLocation parkingLocation) async {
    final db = await database;
    await db.update('parking_location', parkingLocation.toMap(), where: 'id = ?', whereArgs: [parkingLocation.id]);
  }

  Future<void> deleteParkingLocation(int id) async {
    final db = await database;
    await db.delete('parking_location', where: 'id = ?', whereArgs: [id]);
  }
}
