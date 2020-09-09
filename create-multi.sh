#!/usr/bin/env bash

REPO=./multi-yarn/packages

# rm -rf $REPO
# mkdir $REPO
cd $REPO

# ###############################################
# Create some development packages

NB_PKG_DEV=6

for x in $(seq 1 $NB_PKG_DEV) ; do
    mkdir -p pkg-dev-$x
    cd pkg-dev-$x
    yarn init --yes
    cd ..
done

LIST_DEV="typescript"
for y in $(seq 1 $NB_PKG_DEV) ; do
    LIST_DEV="$LIST_DEV pkg-dev-$y"
done

echo $LIST_DEV

# ###############################################
# Create some peer dependencies

LIST_PEER="react react-dom"
echo $LIST_PEER

# ###############################################
# Create A hierarchy of 5 layers of packages that depend on all previous layers

# Number of packages in each layer
NB_PKG_1=10
NB_PKG_2=50
NB_PKG_3=50
NB_PKG_4=50
NB_PKG_5=10

for x in $(seq 1 $NB_PKG_1) ; do
    mkdir -p pkg-1-$x 
    cd pkg-1-$x
    yarn init --yes
    yarn add --cached $LIST
    yarn add --cached --dev $LIST_DEV
    yarn add --cached --peer $LIST_PEER
    cd ..
done

for x in $(seq 1 $NB_PKG_2) ; do
    mkdir -p pkg-2-$x 
    cd pkg-2-$x
    yarn init --yes
    LIST="@babel/core"
    for y in $(seq 1 $NB_PKG_1) ; do
        LIST="$LIST pkg-1-$y"
    done
    echo $LIST
    yarn add --cached $LIST
    yarn add --cached --dev $LIST_DEV
    yarn add --cached --peer $LIST_PEER
    cd ..
done


for x in $(seq 1 $NB_PKG_3) ; do
    mkdir -p pkg-3-$x 
    cd pkg-3-$x
    yarn init --yes
    LIST="@babel/core"
    for y in $(seq 1 $NB_PKG_1) ; do
        LIST="$LIST pkg-1-$y"
    done
    for y in $(seq 1 $NB_PKG_2) ; do
        LIST="$LIST pkg-2-$y"
    done
    echo $LIST
    yarn add --cached $LIST
    yarn add --cached --dev $LIST_DEV
    yarn add --cached --peer $LIST_PEER
    cd ..
done


for x in $(seq 1 $NB_PKG_4) ; do
    mkdir -p pkg-4-$x 
    cd pkg-4-$x
    yarn init --yes
    LIST="@babel/core"
    for y in $(seq 1 $NB_PKG_1) ; do
        LIST="$LIST pkg-1-$y"
    done
    for y in $(seq 1 $NB_PKG_2) ; do
        LIST="$LIST pkg-2-$y"
    done
    for y in $(seq 1 $NB_PKG_3) ; do
        LIST="$LIST pkg-3-$y"
    done
    echo $LIST
    yarn add --cached $LIST
    yarn add --cached --dev $LIST_DEV
    yarn add --cached --peer $LIST_PEER
    cd ..
done


for x in $(seq 1 $NB_PKG_5) ; do
    mkdir -p pkg-5-$x 
    cd pkg-5-$x
    yarn init --yes
    LIST="@babel/core"
    for y in $(seq 1 $NB_PKG_1) ; do
        LIST="$LIST pkg-1-$y"
    done
    for y in $(seq 1 $NB_PKG_2) ; do
        LIST="$LIST pkg-2-$y"
    done
    for y in $(seq 1 $NB_PKG_3) ; do
        LIST="$LIST pkg-3-$y"
    done
    for y in $(seq 1 $NB_PKG_4) ; do
        LIST="$LIST pkg-4-$y"
    done
    echo $LIST
    yarn add --cached $LIST
    yarn add --cached --dev $LIST_DEV
    yarn add --cached $LIST_PEER
    cd ..
done
