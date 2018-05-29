#include "map.h"

int main(int argc, char **argv) {
  void *root = 0;

  Map *a = malloc(sizeof(Map));
  a->key = "name";
  a->value = strdup("gd");
  tsearch(a, &root, compar); /* insert */

  Map *b = malloc(sizeof(Map));
  b->key = "gender";
  b->value = strdup("man");
  tsearch(b, &root, compar); /* insert */

  Map *find_a = malloc(sizeof(Map));
  find_a->key = "name";

  Map *find_b = malloc(sizeof(Map));
  find_b->key = "gender";

  void *r = tfind(find_a, &root, compar); /* read */
  printf("%s\n", (*(Map**)r)->value);

  void *r1 = tfind(find_b, &root, compar); /* read */
  printf("%s\n", (*(Map**)r1)->value);

  return 0;
}
