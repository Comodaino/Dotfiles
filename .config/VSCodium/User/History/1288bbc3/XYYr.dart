class Player{
  final String name;
  late int life;
  Player(this.name){
    life = 40;
  }
  Player(this.name, this.life);
}