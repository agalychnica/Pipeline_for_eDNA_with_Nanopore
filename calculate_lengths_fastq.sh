for i in barcode*; do
	awk 'NR % 4 == 2' ${i}/${i}.fastq | awk '{print length($0)}' | sort | uniq -c | sort -rn | sed 's/^ [ ]*//' > lengths_${i}.txt;
done
