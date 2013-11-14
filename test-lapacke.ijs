load'lapack.ijs'
load'geev.ijs'
coinsert 'jlapack'
floatrand=: ?.@$ % ] - 1:

geev (10 10 $ 100 floatrand 100)

testgeev ''

load'lapack.ijs'
load'gesvd.ijs'
coinsert 'jlapack'
 m1=. ?.4 4$10
tgesvd m1
m2=. ?.4 6$10
m3=. ?.6 4$10
tgesvd m2
tgesvd m3
      testgesvd''

load'lapack.ijs'
load'gesv.ijs'
coinsert 'jlapack'
NB. testgesv''
ma1=. ?. 10 10$100
mb1=. ?. 10 5$50
gesv ma1;mb1
tgesv ma1;mb1

load'lapack.ijs'
load'gesvx.ijs'
coinsert 'jlapack'
ma1=. ?. 10 10$100
mb1=. ?. 10 5$50
y=.ma1;mb1

testgesvx ''
gesvx ma1;mb1


load'lapack.ijs'
load'gels.ijs'
coinsert 'jlapack'
testgels''
   dma=. 6 4 $ _0.57 _1.28 _0.39 0.25 _1.93 1.08 _0.31 _2.14 2.30 0.24 0.40 _0.35 _1.93 0.64 _0.66 0.08 0.15 0.30 0.15 _2.13 _0.02 1.03 _1.43 0.50
   dvb=. _2.67 _0.55 3.34 _0.77 0.48 4.10
   dvx=. 1.5339 1.8707 _1.5241 0.0392
   gels dma;dvb
1.53387 1.87075 _1.52407 0.039183

   zma=. 6 4 $ 0.96j_0.81 _0.03j0.96 _0.91j2.06 _0.05j0.41 _0.98j1.98 _1.20j0.19 _0.66j0.42 _0.81j0.56 0.62j_0.46 1.01j0.02 0.63j_0.17 _1.11j0.60 _0.37j0.38 0.19j_0.54 _0.98j_0.36 0.22j_0.20 0.83j0.51 0.20j0.01 _0.17j_0.46 1.47j1.59 1.08j_0.28 0.20j_0.12 _0.07j1.23 0.26j0.26
   zvb=. _2.09j1.93 3.34j_3.53 _4.94j_2.04 0.17j4.23 _5.19j3.63 0.98j2.53
   zvx=. _0.5044j_1.2179 _2.4281j2.8574 1.4872j_2.1955 0.4537j2.6904
   gels zma;zvb
_0.504365j_1.21788 _2.42815j2.85742 1.48717j_2.19548 0.453708j2.69041

load'lapack.ijs'
load'gelss.ijs'
coinsert 'jlapack'
testgelss''
dma1=. ?. 10 5$100          NB. match fails for this pair since solution is least squares
dmb1=. ?. 10 3$50
dma2=. ?. 5 10$100
dmb2=. ?. 5 3$50
gelss dma1;dmb1
gelss dma2;dmb2



load'lapack.ijs'
load'getrf.ijs'
coinsert 'jlapack'
m1=. ?.4 6$10
getrf m1
y=.m1
NB. its the LU return piece which is fucking up somehow.
m2=. ?.6 4$10
m3=. ?.6 6$10
m4=. 0 0$zzero
m5=. j./ ?. 2 4 6$10
m6=. j./ ?.2 6 4$10
m7=. j./ ?.2 6 6$10
testgetrf''


load'lapack.ijs'
load'geqlf.ijs'
coinsert 'jlapack'
testgeqlf'' NB. same problem as LU above


load'lapack.ijs'
load'gerqf.ijs'
coinsert 'jlapack'
testgerqf'' NB. same problem as LU above/utri

load'lapack.ijs'
load'potrf.ijs'
coinsert 'jlapack'
testpotrf'' NB. works; needs testing


load'lapack.ijs'
load'trtrs.ijs'
coinsert 'jlapack'
testtrtrs'' NB. mostly works; needs testing


load'lapack.ijs'
load'gees.ijs'
coinsert 'jlapack'
testgees'' NB. type error

load'lapack.ijs'
load'gebal.ijs'
coinsert 'jlapack'
testgebal'' NB. segfault


load'lapack.ijs'
load'gehrd.ijs'
coinsert 'jlapack'
testgehrd'' NB. length error like LU case


load'lapack.ijs'
load'gelqf.ijs'
coinsert 'jlapack'
testgelqf'' NB. length error like LU case

load'lapack.ijs'
load'potrf.ijs'
coinsert 'jlapack'
testpotrf'' NB. seems to work; needs numeric testing









yy=. (10 10 $ 100 floatrand 100)
y=.yy
y=.m3
x=. 2b111


