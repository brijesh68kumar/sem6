BEGIN {
	rec = 0;
	sent = 0;
#	packetSize = 0;
	pdr = 0;
}
{
	if ($1 == "r" && $35 =="cbr") {
		rec = rec + 1;
	#	packetSize = packetSize + $37;

	}
	if ($1 == "s") {
		sent = sent + 1;
	}
}
END {

#     packetSize1 = (packetSize * 8 )/$3;
	pdr = (rec/sent);

	printf("Sent : %d\n", sent);
	printf("Recv : %d\n", rec);
#	printf("PacektSize : %d\n", packetSize);
#	printf("Throughput : %f\n", packetSize1);
	printf("PDR : %f\n", pdr);
}
