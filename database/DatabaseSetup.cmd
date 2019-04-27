::By Laerositus

::Creates necessary tables for the gamesList

@echo off
title Database Creator
prompt $s

echo Creating database...
sqlcmd -S 127.0.0.1 -E -i DatabaseCreator.sql