# To run you need to specify path to bracken database (same as the one that was used when built).
# sh generate_bracken_commands.sh /path_to_database/db_folder

for i in ./kraken2_results/*.k2report; do
	sample=`echo $i | cut -d"/" -f2 | cut -d"." -f1`;
	echo "bracken -d $1 -i $i -r 200 -l S -t 10 -o kraken2_results/bracken_results/${sample}.bracken -w kraken2_results/bracken_results/${sample}.breport"
done
