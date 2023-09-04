#To run specify database path 
#To run specify path to folder with input files.
#It will write results to detault folder "kraken2_results" 
#
#Example sh generate_kraken_commands_Nanopore.sh path_to_database/db_folder Path/name_Input_data_folder

mkdir kraken2_results;
 
for i in $2/*.fastq; do
    sample=`echo $i | cut -d"/" -f2`;
    echo "kraken2 --db $1 --threads 6 --classified-out kraken2_results/${sample}_classif.txt --report kraken2_results/${sample}.k2report --output kraken2_results/${sample}.kraken2 $i";
done
