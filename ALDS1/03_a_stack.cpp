#include<stdio.h>
// atoi関数を使用するためにstdlib.hをインクルード
#include<stdlib.h>
#include<string.h>

// top: スタックの頂点(トップ)の要素を指し示す整数型の変数。スタックポインタ。
// S: スタックの要素を格納する整数型の配列。スタック本体。
int top, S[1000];

void push(int x) {
  // スタックポインタを一つ進める
  top++;
  // スタックの頂点に要素xを格納する
  S[top] = x;
}

int pop() {
  // スタックポインタを一つ戻す
  top--;
  // 戻す前のスタックの頂点の要素を返す
  return S[top + 1];
}

int main() {
  int a, b;
  // スタックポインタの初期化
  top = 0;
  // 入力用の文字配列
  char s[100];

  // 標準出力から文字列を読み込み、EOFまで繰り返す
  while( scanf("%s", s) != EOF ) {
    if ( s[0] == '+' ) {
      a = pop();
      b = pop();
      push( a + b );
    } else if ( s[0] == '-' ) {
      a = pop();
      b = pop();
      push( b - a );
    } else if ( s[0] == '*' ) {
      a = pop();
      b = pop();
      push( a * b );
    } else {
      // atoi: 文字列を整数に変換する標準ライブラリ関数(stdlib.h)
      push( atoi(s) );
    }
  }

  printf("%d\n", pop());
  return 0;
}
