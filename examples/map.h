#include <search.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

typedef struct {
  char* key;
  char* value;
} Map;

int compar(const void *l, const void *r) {
  const Map *lm = l;
  const Map *lr = r;
  return strcmp(lm->key, lr->key);
}
