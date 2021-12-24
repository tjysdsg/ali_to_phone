export train_cmd="queue.pl -q w1v6.q,cpu.q --mem 2G"
export decode_cmd="queue.pl -q w1v6.q,cpu.q --mem 1G"
export feat_cmd="queue.pl -q w1v6.q,cpu.q --mem 1G"
export mkgraph_cmd="queue.pl -q graph.q --mem 15G"
export egs_cmd="queue.pl -q w1v6.q,cpu.q --mem 5G"
export cuda_cmd="queue.pl -q v100.q,v100_2.q --mem 2G"

export train_nj=200
export decode_nj=200
