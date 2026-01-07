#include<iostream>
#include<string>
#include<queue>
#include<algorithm>
using namespace std;

int main() {
  int n, q, t;
  string name;
  // pair<string int>: 2つの異なるデータを一組みとする
  queue<pair<string, int>> Q;

  cin >> n >> q;

  for ( int i = 0; i < n; i++ ) {
    cin >> name >> t;
    // make_pair: pair型のデータを生成する関数
    Q.push( make_pair( name, t ) );
  }

  // 今から処理するプロセスの情報を入れる箱
  pair<string, int> u;
  // 初期値0で、今回のターンで実際に引く時間を一時的に格納する変数
  int elaps = 0, a;

  while (!Q.empty()) {
    // キューの先頭要素を取り出してuに代入
    u = Q.front();
    Q.pop();

    a = min(u.second, q);
    u.second -= a;
    elaps += a;

    if ( u.second > 0 ) {
      Q.push( u );
    } else {
      cout << u.first << " " << elaps << endl;
    }
  }

  return 0;
}