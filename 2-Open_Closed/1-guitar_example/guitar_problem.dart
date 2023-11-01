abstract class Guitar {
  String maker;
  String model;
  int volume;

  Guitar(
    this.maker,
    this.model,
    this.volume,
  );
}

class FlameColorGuitar extends Guitar {
  String flameColor;
  FlameColorGuitar(
    String maker,
    String model,
    int volume,
    this.flameColor,
  ) : super(maker, model, volume);
}
