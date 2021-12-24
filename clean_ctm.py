import sys

in_file = sys.argv[1]
out_file = sys.argv[2]

outf = open(out_file, 'w')
with open(in_file) as f:
    for line in f:
        tokens = line.strip('\n').split()

        utt = tokens[0]

        # get end time
        start_time = float(tokens[2])
        duration = float(tokens[3])
        end_time = start_time + duration

        phone = tokens[-1]
        phone = phone.split('_')[0]
        if phone[-1].isdigit():
            phone = phone[:-1]

        outf.write(f'{utt} {start_time:.2f} {end_time:.2f} {phone}\n')

outf.close()
