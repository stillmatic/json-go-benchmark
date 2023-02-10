# benchmarks

## initial run

as clean as possible after updating/fixing
```
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields
Benchmark_protobuf_read-10     	 6904202	       157.4 ns/op	      16 B/op	       1 allocs/op
Benchmark_protobuf_write-10    	 7564522	       158.0 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsoniter_read-10     	 1361487	       884.7 ns/op	     248 B/op	      13 allocs/op
Benchmark_jsoniter_write-10    	 3092260	       386.9 ns/op	     968 B/op	       6 allocs/op
Benchmark_json_read-10         	  758283	      1569 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_write-10        	  987072	      1102 ns/op	     768 B/op	       4 allocs/op
Benchmark_thrift/thrift-write-10         	 5069967	       238.1 ns/op	       0 B/op	       0 allocs/op
Benchmark_thrift/thrift-read-10          	 7031985	       170.6 ns/op	       0 B/op	       0 allocs/op
Benchmark_easyjson/easyjson-read-10      	 2268908	       505.2 ns/op	       0 B/op	       0 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields	13.219s
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields
Benchmark_easyjson-10    	  678940	      1799 ns/op	    1137 B/op	       6 allocs/op
Benchmark_jsoniter-10    	  659892	      1762 ns/op	     160 B/op	       1 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields	3.460s
```

## applying changes

### use sync.Map - 65638ee9a1d8e17d0ee84ba2ef49f5dee29bd5ea

```
Benchmark_jsoniter_read-10     	 1450736	       832.5 ns/op	     248 B/op	      13 allocs/op
Benchmark_jsoniter_write-10    	 3034735	       399.4 ns/op	     968 B/op	       6 allocs/op
Benchmark_json_read-10         	  782140	      1506 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_write-10        	  981466	      1116 ns/op	     768 B/op	       4 allocs/op
```

### Update iter_str.go - f873eb86e9c6b0b5456472cd8cbcecb8b0001317

```
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark
BenchmarkJsonParserLarge-10               	   49428	     24060 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsoniterLarge-10                 	   31179	     38339 ns/op	     352 B/op	      10 allocs/op
BenchmarkEncodingJsonLarge-10             	    8280	    144059 ns/op	     608 B/op	      17 allocs/op
BenchmarkDecodeStdStructMedium-10         	   88526	     13530 ns/op	     512 B/op	      12 allocs/op
BenchmarkEncodeStdStructMedium-10         	 3457346	       355.4 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeJsoniterStructMedium-10    	  383574	      3102 ns/op	      32 B/op	       2 allocs/op
BenchmarkEncodeJsoniterStructMedium-10    	 3057967	       390.6 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeEasyJsonMedium-10          	  161829	      7423 ns/op	     160 B/op	       4 allocs/op
BenchmarkEncodeEasyJsonMedium-10          	 3823393	       310.6 ns/op	     600 B/op	       4 allocs/op
BenchmarkJsonParserSmall-10               	 2749396	       433.1 ns/op	      80 B/op	       4 allocs/op
BenchmarkJsnoiterPullSmall-10             	 4308952	       280.8 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsnoiterReflectSmall-10          	 3220983	       373.4 ns/op	     112 B/op	       1 allocs/op
BenchmarkEncodingJsonStructSmall-10       	  743742	      1598 ns/op	     400 B/op	       8 allocs/op
BenchmarkEasyJsonSmall-10                 	 2805087	       427.8 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsonparser-10                   	      33	  32496585 ns/op	160741782 B/op	      45 allocs/op
Benchmark_stardard_lib-10                 	   41084	     28589 ns/op	    6880 B/op	      17 allocs/op
Benchmark_jsoniter-10                     	   82911	     13852 ns/op	    4368 B/op	       5 allocs/op
Benchmark_protobuf-10                     	11362170	       105.9 ns/op	      16 B/op	       1 allocs/op
Benchmark_jsoniter2-10                    	 4974330	       241.3 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_marshal-10                 	 2826505	       423.5 ns/op	     216 B/op	       4 allocs/op
Benchmark_thrift-10                       	 3070161	       386.2 ns/op	     289 B/op	       8 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark	34.573s
?   	github.com/stillmatic/json-go-benchmark/go-benchmark/testobject	[no test files]
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields
Benchmark_protobuf_read-10     	 7137970	       158.9 ns/op	      16 B/op	       1 allocs/op
Benchmark_protobuf_write-10    	 7279129	       160.3 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsoniter_read-10     	 1521303	       790.5 ns/op	     168 B/op	       3 allocs/op
Benchmark_jsoniter_write-10    	 3060394	       396.3 ns/op	     968 B/op	       6 allocs/op
Benchmark_json_read-10         	  755710	      1591 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_write-10        	  992046	      1119 ns/op	     768 B/op	       4 allocs/op
Benchmark_thrift/thrift-write-10         	 4770003	       252.7 ns/op	       0 B/op	       0 allocs/op
Benchmark_thrift/thrift-read-10          	 7012748	       172.3 ns/op	       0 B/op	       0 allocs/op
Benchmark_easyjson/easyjson-read-10      	 2324904	       511.7 ns/op	       0 B/op	       0 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields	13.290s
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields
Benchmark_easyjson-10    	  677866	      1767 ns/op	    1137 B/op	       6 allocs/op
Benchmark_jsoniter-10    	  677841	      1745 ns/op	     160 B/op	       1 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields	3.456s
```

### Make RawMessage an alias of json.RawMessage - eafb8a36b6798c71db5e1e2433821b2f9b48f577

```
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark
BenchmarkJsonParserLarge-10               	   48763	     24478 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsoniterLarge-10                 	   31282	     39039 ns/op	     352 B/op	      10 allocs/op
BenchmarkEncodingJsonLarge-10             	    8113	    147401 ns/op	     608 B/op	      17 allocs/op
BenchmarkDecodeStdStructMedium-10         	   86931	     13769 ns/op	     512 B/op	      12 allocs/op
BenchmarkEncodeStdStructMedium-10         	 3303610	       352.1 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeJsoniterStructMedium-10    	  381207	      3103 ns/op	      32 B/op	       2 allocs/op
BenchmarkEncodeJsoniterStructMedium-10    	 3027519	       395.1 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeEasyJsonMedium-10          	  160597	      7455 ns/op	     160 B/op	       4 allocs/op
BenchmarkEncodeEasyJsonMedium-10          	 3709760	       339.8 ns/op	     600 B/op	       4 allocs/op
BenchmarkJsonParserSmall-10               	 2750426	       447.8 ns/op	      80 B/op	       4 allocs/op
BenchmarkJsoniterPullSmall-10             	 4242624	       280.9 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsoniterReflectSmall-10          	 3199636	       377.0 ns/op	     112 B/op	       1 allocs/op
BenchmarkEncodingJsonStructSmall-10       	  706862	      1634 ns/op	     400 B/op	       8 allocs/op
BenchmarkEasyJsonSmall-10                 	 2746972	       438.1 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsonparser-10                   	      32	  33541112 ns/op	160741862 B/op	      45 allocs/op
Benchmark_stardard_lib-10                 	   40464	     29952 ns/op	    6880 B/op	      17 allocs/op
Benchmark_jsoniter-10                     	   77378	     15060 ns/op	    4368 B/op	       5 allocs/op
Benchmark_protobuf-10                     	11074009	       108.4 ns/op	      16 B/op	       1 allocs/op
Benchmark_jsoniter2-10                    	 4896301	       246.4 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_marshal-10                 	 2691794	       443.2 ns/op	     216 B/op	       4 allocs/op
Benchmark_thrift-10                       	 2928537	       402.6 ns/op	     291 B/op	       8 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark	34.824s
?   	github.com/stillmatic/json-go-benchmark/go-benchmark/testobject	[no test files]
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields
Benchmark_protobuf_read-10     	 7204789	       163.0 ns/op	      16 B/op	       1 allocs/op
Benchmark_protobuf_write-10    	 7220402	       175.7 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsoniter_read-10     	 1465850	       791.5 ns/op	     168 B/op	       3 allocs/op
Benchmark_jsoniter_write-10    	 2953336	       407.3 ns/op	     968 B/op	       6 allocs/op
Benchmark_json_read-10         	  755988	      1624 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_write-10        	 1000000	      1156 ns/op	     768 B/op	       4 allocs/op
Benchmark_thrift/thrift-write-10         	 4714184	       253.7 ns/op	       0 B/op	       0 allocs/op
Benchmark_thrift/thrift-read-10          	 6968458	       172.8 ns/op	       0 B/op	       0 allocs/op
Benchmark_easyjson/easyjson-read-10      	 2329353	       512.1 ns/op	       0 B/op	       0 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields	14.511s
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields
Benchmark_easyjson-10    	  655566	      1804 ns/op	    1137 B/op	       6 allocs/op
Benchmark_jsoniter-10    	  662967	      1770 ns/op	     160 B/op	       1 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields	3.419s
```

###  replace slices with (more appropriate) arrays 09c787e6a694c6d6cde7e61e929d553b13e112e3

```
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark
BenchmarkJsonParserLarge-10               	   50076	     24052 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsoniterLarge-10                 	   31344	     38547 ns/op	     352 B/op	      10 allocs/op
BenchmarkEncodingJsonLarge-10             	    8270	    144469 ns/op	     608 B/op	      17 allocs/op
BenchmarkDecodeStdStructMedium-10         	   89158	     13422 ns/op	     512 B/op	      12 allocs/op
BenchmarkEncodeStdStructMedium-10         	 3485205	       344.3 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeJsoniterStructMedium-10    	  385778	      3118 ns/op	      32 B/op	       2 allocs/op
BenchmarkEncodeJsoniterStructMedium-10    	 3137016	       383.4 ns/op	     216 B/op	       2 allocs/op
BenchmarkDecodeEasyJsonMedium-10          	  160813	      7413 ns/op	     160 B/op	       4 allocs/op
BenchmarkEncodeEasyJsonMedium-10          	 3777592	       333.2 ns/op	     600 B/op	       4 allocs/op
BenchmarkJsonParserSmall-10               	 2731998	       434.9 ns/op	      80 B/op	       4 allocs/op
BenchmarkJsoniterPullSmall-10             	 4234518	       284.1 ns/op	       0 B/op	       0 allocs/op
BenchmarkJsoniterReflectSmall-10          	 3220191	       373.3 ns/op	     112 B/op	       1 allocs/op
BenchmarkEncodingJsonStructSmall-10       	  731908	      1637 ns/op	     400 B/op	       8 allocs/op
BenchmarkEasyJsonSmall-10                 	 2772595	       426.4 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsonparser-10                   	      31	  32413421 ns/op	160741795 B/op	      45 allocs/op
Benchmark_stardard_lib-10                 	   40506	     28445 ns/op	    6880 B/op	      17 allocs/op
Benchmark_jsoniter-10                     	   85509	     14227 ns/op	    4368 B/op	       5 allocs/op
Benchmark_protobuf-10                     	11257154	       106.4 ns/op	      16 B/op	       1 allocs/op
Benchmark_jsoniter2-10                    	 4933056	       246.6 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_marshal-10                 	 2786623	       425.2 ns/op	     216 B/op	       4 allocs/op
Benchmark_thrift-10                       	 3064579	       386.1 ns/op	     289 B/op	       8 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark	34.639s
?   	github.com/stillmatic/json-go-benchmark/go-benchmark/testobject	[no test files]
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields
Benchmark_protobuf_read-10     	 7497052	       159.0 ns/op	      16 B/op	       1 allocs/op
Benchmark_protobuf_write-10    	 7467984	       163.9 ns/op	      64 B/op	       2 allocs/op
Benchmark_jsoniter_read-10     	 1528053	       786.4 ns/op	     168 B/op	       3 allocs/op
Benchmark_jsoniter_write-10    	 3013065	       396.4 ns/op	     968 B/op	       6 allocs/op
Benchmark_json_read-10         	  752643	      1598 ns/op	       0 B/op	       0 allocs/op
Benchmark_json_write-10        	 1000000	      1119 ns/op	     768 B/op	       4 allocs/op
Benchmark_thrift/thrift-write-10         	 4651868	       258.0 ns/op	       0 B/op	       0 allocs/op
Benchmark_thrift/thrift-read-10          	 6841345	       175.4 ns/op	       0 B/op	       0 allocs/op
Benchmark_easyjson/easyjson-read-10      	 2235423	       526.2 ns/op	       0 B/op	       0 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_int_fields	13.385s
goos: darwin
goarch: arm64
pkg: github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields
Benchmark_easyjson-10    	  663583	      1810 ns/op	    1137 B/op	       6 allocs/op
Benchmark_jsoniter-10    	  687213	      1765 ns/op	     160 B/op	       1 allocs/op
PASS
ok  	github.com/stillmatic/json-go-benchmark/go-benchmark/with_10_string_fields	3.448s```