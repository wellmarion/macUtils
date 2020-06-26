printf "Atualizando ERP-Bluesoft >\n "
cd $ERP_FOLDER;
git pull

printf "Atualizando Acelerato >\n "
cd $VELLOZZ_FORDER;
git pull

printf "Atualizando Finan  >\n "
cd $FINAN_FORDER;
git pull

printf "Atualizando Reports  >\n "
cd $REPORTS_FOLDER;
git pull

printf "Atualizando ERP-Migração  >\n "
cd $ERP_MIGRACAO;
git pull