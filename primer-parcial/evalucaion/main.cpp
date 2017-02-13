
#include "VideoJuego.h"
#include "Almacen.h"
#include "GameFactory.h"

int main()
{
  GameFactory* gamefactory = new GameFactory();
  VideoJuego* videgame1 = gf->createGame("Estrategia", VideoJuego::LUCHA, "myGame", 1);
  Estrategia videogame2 = *(Estrategia*)v1;
  VideoJuego* videogame3 = gf->createGame("Estrategia", VideoJuego::LUCHA, "thirdGame", 123);

  Almacen<VideoJuego> a;
  a.add(videogame1);
  a.add(&videogame2);
  a.add(videogame3);

  cout << a.findByName("thirdGame")[0]->getName();

  delete gamefactory;
  delete videogame1;
  delete videogame3;

}
