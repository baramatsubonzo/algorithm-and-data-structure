#include<stdio.h>

int search(int A[], int n, int key) {
  int i = 0;
  A[n] = key;
  while (A[i] != key) {
    i++;
  }
  // keyが見つかれば 1 (true)を、見つからなければ 0 (false)を返す
  return i !=n;
}

int main() {
  int i, n, A[10000+1], q, key, sum = 0;

  // ユーザーが入力した整数を読み取り、変数nに格納
  scanf("%d", &n);
  for ( i = 0; i < n; i++) {
    // ユーザーが入力した整数を配列Aのi番目に格納
    scanf("%d", &A[i]);
  }

  scanf("%d", &q);
  for ( i = 0; i < q; i++) {
    // ユーザーが入力した整数を変数keyに格納
    scanf("%d", &key);
    // search関数を呼び出し、keyが配列Aに存在するか確認
    if (search(A, n, key)) {
      sum++;
    }
  }
  printf("%d\n", sum);

  return 0;
}