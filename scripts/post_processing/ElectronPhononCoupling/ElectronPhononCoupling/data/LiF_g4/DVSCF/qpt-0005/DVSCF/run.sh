#!/bin/bash


MPIRUN='mpirun -n 4'
ABINIT='abinit'

ln -nfs ../../../../Den/out_data/odat_DEN input_data/idat_DEN
ln -nfs ../../../WFK/out_data/odat_WFK input_data/idat_WFK
ln -nfs ../../WFQ/out_data/odat_WFQ input_data/idat_WFQ

$MPIRUN $ABINIT < calc.files &> calc.log 2> stderr

