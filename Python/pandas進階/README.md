# pandas進階
## 資料分類
* 背景與動機
  * 這種整數鍵值,稱為分類或是字典編碼 
  * pandas:[營養補充站](https://byuidatascience.github.io/python4ds/factors.html)
* 分類表示的計算
* 用分類提升效能
* 分類方法
  * pandas 中Series的分類方法

| 🦐方法 | 😆描述 |
| ------ |:------:|
|add_categories|在現有類別的尾端加入新的(未使用)類別|
|as_ordered|讓類別有順序|
|as_unordered|讓類別無順序|
|remove_categories|移除類別,將移除掉的值設為null|
|remove_unused_categories|移除在類別資料中未出現的類別|
|rename_categories|用指定新類別名稱集合取代現有類別:但不能改變類別數量|
|reorder_categories|與rename_categories類似,但同時將分類順序|
|set_categories|用指定新分類名稱集合取代現有類別:可新增或移除分類項目|
* 為建模建立指標變數dummy variables
## 進階的Groupby用法
* 分組轉換以及未包裝分組
  * 他可以產生一個常數,用於廣播到所有分組
  * 他可以產生跟分組一樣大小的一個物件
  * 他的輸入不能是mutate類型
* 分組時間重新取樣
## 方法串接的技巧
```python
df = load_data()
df2 = df2[df['col2']<0]
df2['col1_demeaned'] = df2['col1'].mean()
result = df2.groupby('key').col1_demeaned.std()
```
另一種寫法
```python
#不使用函式的做法
df2=df.copy
df2['k']=v
#使用函式作法
df2=df.assign(k=v)

result =(df.assign(col_demeaned=df2.col1-df.col2.mean()).groupby('key').col1_demeaned.std())
```
展示callable
```python
df = load_data()
df2 = df[df['col2']<0]
```
可改成
```python
df(load_data()
    [lambda x:x['col2']<0])
```
成果方法集成
```python
result=(load_data()
      [lambda x:x.col2<0]
      .assign(col1_demeaned=lambda x:x.col1-x.col1.mean())
      .groupby('key')
      .col1_demeaned.std())

```

----
* pip方法

假設有一串函式:
```python
a = f(df.arg1=v1)
b = g(a,v2,arg3=v3)
c = h(b,arg4=v4)
```
當使用函式可以接受Series或DataFrame物件當作輸入和輸出時,你就可以將上述的程式改寫成呼叫pipe
```python
result= (df.pipe(f,arg1=v1)
      .pipe(g,v1,arg3=v3)
      .pipe(h,arg4=v4))
```

另一個範例

```python
g = df.groupby(['key1','key2'])
df['col1']=df['col1']-s.tranform('mean')

def group_demean(df,by,cols):
  result = df.copy()
  g = df.groupby(by)
  for c in cols:
    result[c]=df[c]-g[c].transform('mean')
  return result

result = (df[df.col1<0].pipe(group_demean,['key1','key2'],['col1']))
```

