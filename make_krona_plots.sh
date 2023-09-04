for i in *.breport; do
    barc=`echo $i | cut -d"." -f1`;
    echo "python ~/bin/KrakenTools/kreport2krona.py -r $i -o ${barc}.b.krona.txt --no-intermediate-ranks";
    echo "/users/3053890/bin/KronaScripts/ktImportText ${barc}.b.krona.txt -o ${barc}.krona.html";
done
