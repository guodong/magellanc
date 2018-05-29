
#include <string>
using namespace std;

struct entry_s {
  char *key;
  char *value;
  struct entry_s *next;
};

typedef struct entry_s entry_t;

struct hashtable_s {
  int size;
  struct entry_s **table;	
};

typedef struct hashtable_s hashtable_t;

typedef struct {
  string src_mac;
  string dst_mac;
  int ingress;
} Packet;

typedef struct {
  hashtable_t host_table;
} Switch;

extern "C" int onPacket(Packet, Switch);

int onPacket(Packet pkt, Switch sw) {
  int egress;
  if (!sw.host_table[pkt.src_mac]) {
    sw.host_table[pkt.src_mac] = pkt.ingress;
  }

  return egress;
}
