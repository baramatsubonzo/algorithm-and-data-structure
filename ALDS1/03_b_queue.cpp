#include<stdio.h>
#include<string.h>
#define LEN 100005

// 構造体Pを定義
typedef struct pp {
  char name[100];
  int t;
} P;

P Q[LEN];
int head, tail, n;

void enqueue(P x) {
  Q[tail] = x;
  tail = (tail + 1) % LEN;
}

P dequeue() {
  P x = Q[head];
  head = (head + 1) % LEN;
  return x;
}

int min(int a, int b) {
  return a < b ? a : b;
}

int main() {
  int elaps = 0, c;
  int i, q;
  P u;
  scanf("%d %d", &n, &q);

  // 全てのプロセスをキューに順番に追加する
  for (i = 0; i < n; i++) {
    scanf("%s", Q[i].name);
    scanf("%d", &Q[i].t);
  }
  head = 0;
  tail = n;

  while (head != tail) {
    u = dequeue();
    c = min(q, u.t);
    u.t -= c;
    elaps += c;
    if (u.t > 0) {
      enqueue(u);
    } else {
      printf("%s %d\n", u.name, elaps);
    }
  }
  return 0;
}
