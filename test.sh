targets=("RDMA-07" "RDMA-09")
for i in ${targets[@]}
do
	ssh ${i} "
		rm a.c
		rm a
		rm result.txt
		wget https://github.com/rollrat/ssh-test-suit/raw/main/a.c
		gcc a.c -o a
		./a >> result.txt
	"
	scp ${i}:result.txt result/result-${i}.txt
done
