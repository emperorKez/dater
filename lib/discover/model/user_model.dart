class UserModel {
  String? name;
  String? job;
  String? location;

  UserModel({
    this.name,
    this.job,
    this.location,
  });
}

List<UserModel> users = [
  UserModel(
    name: 'Eliza Williams, 28',
    job: 'Manager',
    location: 'Lagos',
  ),
  UserModel(
    name: 'Seven Battlefield, 27',
    job: 'Manager',
    location: 'Lagos',
  ),
  UserModel(
    name: 'Jonny Sin, 46',
    job: 'Manager',
    location: 'Lagos',
  ),
  UserModel(
    name: 'Brad Goodwill, 25',
    job: 'Manager',
    location: 'Lagos',
  ),
];
