# GPerfTools=/home/wuzhu/tools/gperftools

CCFLAGS=-fno-omit-frame-pointer -g

ALL_BINS=libTestProfiler.so main_dynamic_link
all:$(ALL_BINS)

main_dynamic_link : main_dynamic_link.o
	g++ $(CCFLAGS) -o $@ $^ -L./ -L$(GPerfTools)/lib -Wl,-Bdynamic -lTestProfiler -ltcmalloc_and_profiler

libTestProfiler.so: TestProfiler.o
	g++ -shared $(CCFLAGS) -o $@ $^

.cpp.o:
	g++ $(CCFLAGS) -c -I./ -I$(GPerfTools)/include -fPIC -o $@ $<
	
clean:
	rm -f $(ALL_BINS) *.o *.prof

