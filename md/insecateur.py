#!/usr/bin/python
# -*- coding: utf-8 -*-

# Auteure : Élisabeth Henry <liz.henry at ouvaton.org>
# Vous pouvez utiliser, modifier et redistribuer ce fichier sans
# aucune restriction.

# L'objectif de ce script est de remplacer les espaces sécables
# situées avant ou après des caractères où il ne devrait pas y en
# avoir en français (?, !, ;, :, «, ») par des espaces insécables.
#
# Utilisation : insecateur un_fichier 
#
# Sans argument, lit sur l'entrée standard et écrit sur la sortie standard.


import string
import sys
import getopt

def usage ():
   print sys.argv[0] + " [options] [nom_du_fichier]"
   print """   Remplace les espaces par des espaces insécables lorsqu'ils
   sont avant/après des caractères où cela est approprié
   (?,!,«,»,;,:). Prend en entrée l'entrée standard ou nom_du_fichier.

   --help/-h : affiche l'aide
   --output=fichier/-ofichier : écrit la sortie dans fichier 
   --tilde/-t : remplace l'espace insécable unicode par ~ ; utile pour LaTeX.
   --typo/-T : remplace les --- par des tirets cadratins (—), les -- par des courts (–) et les <</>> par «/»."""


# Options par défaut
output_filename = None
input_filename = None
insec_car = " "
typo = False

# On analyse la ligne de commande
try:
   opts, args = getopt.getopt (sys.argv[1:], "Tho:t", ["typo", "help", "output=", "tilde"])
except getopt.GetOptError, err:
   print str (err)
   sys.exit (2)

for opt, arg in opts:
   if opt in ("-o", "--output"):
      output_filename=arg
   elif opt in ("-h", "--help"):
      usage ()
      sys.exit (0)
   elif opt in ("-t", "--tilde"):
      insec_car = "~"
   elif opt in ("-T", "--typo"):
      typo = True
   else:
      assert False, "Option non gérée"

if len (args) > 1:
   print "Insecateur ne gère qu'un seul fichier d'entrée à la fois"
   sys.exit (-1)
elif len (args) == 1:
   input_filename = args[0]

input_file = None

if input_filename == None:
   input_file = sys.stdin
else:
   input_file = open(input_filename,"r+")

s = input_file.read ()
input_file.close ()

if (typo):
   s = s.replace ("---", "—")
   s = s.replace ("--", "–")
   s = s.replace ("<<", "«")
   s = s.replace (">>", "»")


s = s.replace (" ?", insec_car + "?")
s = s.replace ("« ", "«" + insec_car)
s = s.replace (" »", insec_car + "»")
s = s.replace (" !", insec_car + "!")
s = s.replace (" ;", insec_car + ";")
s = s.replace (" :", insec_car + ":")

output_file = None
if output_filename == None:
   output_file = sys.stdout
else:
   output_file = open(output_filename,"w")

output_file.write (s)
output_file.close ()

sys.exit (0)

