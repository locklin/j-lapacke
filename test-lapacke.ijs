load'lapack.ijs'
load'geev.ijs'
coinsert 'jlapack'
floatrand=: ?.@$ % ] - 1:

geev (10 10 $ 100 floatrand 100)

testgeev ''

load'gesvd.ijs'
coinsert 'jlapack'
 m1=. ?.4 4$10
tgesvd m1
m2=. ?.4 6$10
m3=. ?.6 4$10
tgesvd m2
tgesvd m3
      testgesvd''

load'gesv.ijs'
coinsert 'jlapack'
testgesv''

yy=. (10 10 $ 100 floatrand 100)
y=.yy
y=.m3
x=. 2b111


