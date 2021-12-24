set -e

nj=87
mdl=data/final.mdl
phones=data/phones.txt

. cmd.sh
. path.sh

mkdir -p exp

$train_cmd JOB=1:$nj exp/ali_to_phones.JOB.log ali-to-phones --ctm-output $mdl "ark:gunzip -c data/ali.JOB.gz|" exp/JOB.ctm

cat exp/*.ctm > exp/ctm.int
utils/int2sym.pl -f 5 $phones exp/ctm.int > exp/ctm.txt

python clean_ctm.py exp/ctm.txt exp/ctm_clean.txt
