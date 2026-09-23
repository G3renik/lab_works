# !/bin/bash

# 						1 задание

cd lab0
mkdir bagon
cd bagon
mkdir glameow
touch wooper
echo -e "Способности = Torrent Landslide Damp\nWater Absorb" > wooper
mkdir poochyena
# Не использую touch, так как echo сразу создает файл"
echo "Тип покемона = FIRE FIGHTING" > emboar
mkdir meowth
echo -e "Способности = Last Chance Mach Speed\nIntimidate Keen Eye" > staravia
cd ..
echo "Развитые способности = Rattled" > granbull
echo -e "Способности = Bite Roar Ember Leer Odor\nSleuth Helping Hand Flame Wheel Reversal\nFire Fang Take Down Flame Burst Agility\nRetaliate Flamethrower Crunch Heat Wave\nOutrage Flare Blitz" > growlithe
echo "Тип покемона = WATER ELECTRIC" > lanturn
echo "Тип диеты = Carnivore" > seel
mkdir whirlpede
cd whirlpede
mkdir dusknoir
echo -e "Способности = Harden Mud-Slap Disable\nSludge Minimize Mud Bomb Sludge Bomb\nFling Screech Sludge Wave Acid Armor\nGunk Shot Memento" > muk
mkdir vibrava
echo -e "Ходы = Air Cutter Counter Defog\nDouble-edge Endeavor Heat Wave Mud-Slap\nOminous Wind Roost Sky Attack Sleep Talk\nSnore Swift Tailwind Twister" > taillow

# 						2 задание

cd ..
#	bagon
chmod u=wx,g=x,o=rx bagon

#	glameow
chmod 711 bagon/glameow

#	wooper
chmod u=r,g=,o=r bagon/wooper

#	poochyena
chmod u=rx,g=rwx,o=x bagon/poochyena

#	emboar
chmod 404 bagon/emboar

#	meowth
chmod 550 bagon/meowth

#	staravia
chmod 066 bagon/staravia

#	granbull
chmod 046 granbull

#	growlithe
chmod 404 growlithe

#	lanturn
chmod 640 lanturn

#	seel
chmod 600 seel

#	whirlepede
chmod u=rx,g=rwx,o= whirlpede

#	dusknoir
chmod 551 whirlpede/dusknoir

#	muk
chmod u=,g=,o=rw whirlpede/muk

#	vibrava
chmod 315 whirlpede/vibrava

#	taillow
chmod u=,g=r,o=rw whirlpede/taillow

#						 3 задание

# Перехожу в свою корневую папку
cd ..
#	Выдаю себе права читать muk и staravia и bagon
   chmod u+r lab0/whirlpede/muk
   chmod u+r lab0/bagon/staravia
   chmod u+r lab0/bagon

cat lab0/whirlpede/muk lab0/bagon/staravia > lab0/growlithe_15

#	Возвращаю нужные права
   chmod u-r lab0/whirlpede/muk
   chmod u-r lab0/bagon/staravia
   chmod u-r lab0/bagon

#	Выдаю себе права читать bagon и staravia
   chmod u+r lab0/bagon
   chmod u+r lab0/bagon/staravia

cp -r lab0/bagon lab0/whirlpede/vibrava

#	Забираю права читать bagon и staravia
   chmod u-r lab0/bagon
   chmod u-r lab0/bagon/staravia

ln -s whirlpede lab0/Copy_4
ln -s ../granbull lab0/bagon/staraviagranbull

#	Выдаю себе права читать granbull и bagon и писать в poochyena
   chmod u+r lab0/granbull
   chmod u+r lab0/bagon
   chmod u+w lab0/bagon/poochyena

cp lab0/granbull lab0/bagon/poochyena/

#	Забираю себе права читать granbull, bagon и писать в poochyena
   chmod u-r lab0/granbull
   chmod u-w lab0/bagon/poochyena


cat lab0/lanturn > lab0/bagon/staravialanturn
ln lab0/seel lab0/bagon/emboarseel

#	Забираю права читать bagon
   chmod u-r lab0/bagon

# 						4 задание

mkdir tmp
# 1 пункт

# Даю себе права читать emboar и staravia
   chmod u+r lab0/bagon/emboar
   chmod u+r lab0/bagon/staravia

wc -m lab0/bagon/emboar lab0/bagon/staravia > tmp/4a 2>&1


# 2 пункт

# Даю себе права читать bagon и wnirlpede и другие каталоги так как поиск рекурсивно
   chmod u+r lab0/bagon
   chmod u+r lab0/whirlpede
   chmod u+r lab0/whirlpede/vibrava
   chmod u+r lab0/granbull

ls -R -lut lab0 2> tmp/4b | tail -n 2


# 3 пункт


grep -r --include="w*" "" lab0 2>&1 | sort


# 4 пункт 

# Даю себе права читать staravia
   chmod u+r lab0/bagon/staravia

grep -E -e "b$" lab0/bagon/wooper lab0/bagon/emboar lab0/bagon/staravia 2>/dev/null

# Забираю права читать staravia
   chmod u-r lab0/bagon/staravia

# 5 пункт

grep -r --include="*l" "" lab0 | wc -l

# 6 пункт


ls -laR lab0/bagon | grep '^-'| sort -k 2 -n -r 

# Забираю себе права читать bagon и wnirlpede
   chmod u-r lab0/bagon
   chmod u-r lab0/whirlpede
   chmod u-r lab0/whirlpede/vibrava
   chmod u-r lab0/granbull

# 						5 задание

rm -f lab0/lanturn
rm -f lab0/bagon/emboar
rm -f lab0/bagon/staraviagranbull
rm -f lab0/bagon/emboarseel

# Даю права для vibrava и whirlpede и всех файлов внутри
   chmod -R u+rwx lab0/whirlpede

rm -rf lab0/whirlpede/vibrava
rm -rf lab0/whirlpede
