import sys
f = open(sys.argv[1]).readlines()
f1 = open(sys.argv[2], 'w')

for line in f:
	count = 0
	if len(line) > 1:
		list = line.split()
		for word_cat in list:
			count += 1
			word_tag = word_cat.split("/")
			f1.write("(id-sd_cat\tL%s\t%s)\n" % (count, word_tag[1]))
		f1.write(";~~~~~~~~~~\n")

f1.close()

