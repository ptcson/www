import pygame,random
sf=pygame.display.set_mode([15**2]*2).fill
y,s,h=bl=[15,16,17]
n,a=16,random.randint(7,15)*16+random.randint(5,15)
while (bl.count(h)<2)*(h%16)*(h&240):
    if e:=pygame.event.get(768):
        s=(e[0].key%4*17+15)%49-n
    bl=bl[a!=h:]+[h+s]
    sf('black')
    if a==h:
        a=((bl[-1]+7)%15+1)*16+bl[0]%15+1
    for i,v in enumerate([a]+bl):
        sf('green' if i else 'red',
           ((v-1)%n*y,(v-n)//n*y,y,y))
    pygame.display.update()
    h+=s
    pygame.time.wait(200)