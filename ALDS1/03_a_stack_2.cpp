#include<iostream>
//C++においてC言語の標準ライブラリ(stdlib.h)使うためにincludeする
#include<cstdlib>
#include<stack>
using namespace std;

int main() {
  // int型を格納するスタックSを定義
  stack<int> S;
  int a, b, x;
  string s;

  while (cin >> s) {
    if ( s[0] == '+' ){
      a = S.top();
      S.pop();
      b = S.top();
      S.pop();
      S.push(a + b);
    } else if ( s[0] == '-' ){
      a = S.top();
      S.pop();
      b = S.top();
      S.pop();
      S.push(b - a);
    } else if ( s[0] == '*' ){
      a = S.top();
      S.pop();
      b = S.top();
      S.pop();
      S.push(a * b);
    } else {
      x = atoi( s.c_str() );
      S.push(x);
    }
  }
  cout << S.top() << endl;

  return 0;
}