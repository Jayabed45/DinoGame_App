class Obstacle {
  double x, y;
  double width, height;
  double speed;

  Obstacle({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.speed = 5.0,
  });

  void update(double dt) {
    x -= speed * dt;
  }

  bool isOffScreen() {
    return x + width < 0;
  }
}
