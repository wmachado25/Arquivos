function k=ufrgs_ajuste(x,y,F)

FF=F(x)
k=(FF'*FF)\FF'*y