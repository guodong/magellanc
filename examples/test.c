enum kActionType {
  FORWARD,
  DROP
};

typedef struct {
  char* src_mac;
  char* dst_mac;
  int ingress;
} Packet;

typedef struct {
  void* entries;
  int (*Get)(char* key);
  void (*Set)(char* key, int value);
  int (*Exist)(char* key);
} Map;

typedef struct {
  enum kActionType type;
  char field[32];
  union {
    int egress;
    char modValue[32];
  } ops;
} Action;

typedef struct {
  void* entries;
  void (*Insert)(Action);
} Set;

typedef struct {
  Map hostTable;
} Switch;

typedef struct {
  Switch sw;
} Env;

typedef struct {
  Switch sw;
  Set actions;
} RoutingAction;


RoutingAction onPacket(Packet pkt, Env env) {
  RoutingAction ra;
  ra.sw = env.sw;
  
  if (!env.sw.hostTable.Exist(pkt.src_mac)) {
    env.sw.hostTable.Set(pkt.src_mac, pkt.ingress);
  }

  if (env.sw.hostTable.Exist(pkt.dst_mac)) {
    int egress = env.sw.hostTable.Get(pkt.dst_mac);

    Action action = {
      .type = FORWARD,
      .ops.egress = egress
    };
    ra.actions.Insert(action);
  } else {
    Action action = {
      .type = DROP
    };
    ra.actions.Insert(action);
  }

  return ra;
}
