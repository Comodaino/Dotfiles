class Player{
  final String name;
  late int life;
  Player.commander(this.name){
    life = 40;
  }
  Player.custom(this.name, this.life);
}