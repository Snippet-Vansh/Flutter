void main()
{
  // var map_name = {
  //    'Name':'value1',
  //   'YearofExperience':3,
  //   'AvgRating':0.9,
  //   'GoodAtJob':true
  // };
  // map_name['Name'] = 'vansh';

  var mapName = Map();

  mapName['Name'] = 'vansh';
mapName['YearOfExperience'] = '3';
mapName['AvgRating'] = '0.4';
mapName['GoodAtJob'] = 'true';

print(mapName.isNotEmpty);
print(mapName.isEmpty);
print(mapName.length);
print(mapName.keys);
print(mapName.values);
print(mapName.containsKey('Name'));
print(mapName.containsValue(false));
print(mapName.remove('GoodAtJob'));
print(mapName);
  }