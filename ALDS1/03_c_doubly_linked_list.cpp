#include<cstdio>
#include<cstdlib>
#include<cstring>

struct Node {
  int key;
  Node *next, *prev;
};

Node *nil;

Node* listSearch(int key) {
  Node *cur = nil->next;
  while (cur != nil && cur->key != key) {
    cur = cur->next;
  }
  return cur;
}

void init() {
  // Node型の構造体を動的に確保し、ポインタをnilに代入
  // malloc: 指定サイズの空きスペースをヒープ領域から確保する標準ライブラリ関数(stdlib.h)
  // mallocの戻り値はvoid型ポインタなので、Node型ポインタにキャストする
  nil = (Node *)malloc(sizeof(Node));
  nil->next = nil;
  nil->prev = nil;
}

void printList() {
  Node *cur = nil->next;
  int isf = 0;
  while (1) {
    if ( cur == nil ) {
      break;
    }
    if ( isf++ > 0 ) {
      printf(" ");
    }
    printf("%d", cur->key);
    cur = cur->next;
  }
  printf("\n");
}

void deleteNode(Node *t) {
  if (t == nil) {
    return;
  }
  t->prev->next = t->next;
  t->next->prev = t->prev;
  free(t);
}

void deleteFirst() {
  deleteNode( nil->next );
}

void deleteLast() {
  deleteNode( nil->prev );
}

void deleteKey(int key) {
  Node *t = listSearch(key);
  deleteNode(t);
}

void insert(int key) {
  Node *x = (Node *)malloc(sizeof(Node));
  x->key = key;
  x->next = nil->next;
  nil->next->prev = x;
  nil->next = x;
  x->prev = nil;
}

int main() {
  int key, n, i;
  int size = 0;
  char com[20];
  int np = 0, nd = 0;
  scanf("%d", &n);
  init();

  for (i = 0; i < n; i++) {
    scanf("%s%d", com, &key);

    if (com[0] == 'i') { // insert
      insert(key);
      np++;
      size++;
    } else if (com[0] == 'd') { // delete
      if (strlen(com) > 6) {
        if (com[6] == 'F') { // deleteFirst
          deleteFirst();
        } else if (com[6] == 'L') { // deleteLast
          deleteLast();
        }
      } else {
        deleteKey(key); // delete key
        nd++;
      }
        size--;
      }
    }
    printList();
    return 0;
}
