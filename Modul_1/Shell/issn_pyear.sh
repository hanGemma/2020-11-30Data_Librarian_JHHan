#Dieser Skript selektiert issn und publicationsyear aus dirty.tsv Datei und bearbeitet.
#16.12.2020  erstellt von Han
cut -f5,12   dirty.tsv | sed s/issn://gi | sed 's/^[ ]*//g'| sed '/^\s*$/d' | grep '[0-9][0-9][0-9][0-9]-*' | sort | uniq  > 2020-12-04-Dates_and_ISSNs.tsv
