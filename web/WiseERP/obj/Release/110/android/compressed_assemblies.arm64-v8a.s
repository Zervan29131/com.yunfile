	.arch	armv8-a
	.file	"compressed_assemblies.arm64-v8a.arm64-v8a.s"
	.include	"compressed_assemblies.arm64-v8a-data.inc"

	.section	.data.compressed_assembly_descriptors,"aw",@progbits
	.type	.L.compressed_assembly_descriptors, @object
	.p2align	3
.L.compressed_assembly_descriptors:
	/* 0: Java.Interop.dll */
	/* uncompressed_file_size */
	.word	162304
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_0

	/* 1: Mono.Android.dll */
	/* uncompressed_file_size */
	.word	1066496
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_1

	/* 2: Mono.Security.dll */
	/* uncompressed_file_size */
	.word	109056
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_2

	/* 3: System.Core.dll */
	/* uncompressed_file_size */
	.word	54784
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_3

	/* 4: System.Net.Http.dll */
	/* uncompressed_file_size */
	.word	212480
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_4

	/* 5: System.Numerics.dll */
	/* uncompressed_file_size */
	.word	25600
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_5

	/* 6: System.dll */
	/* uncompressed_file_size */
	.word	386048
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_6

	/* 7: WiseERP.dll */
	/* uncompressed_file_size */
	.word	130560
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_7

	/* 8: Xamarin.AndroidX.Activity.dll */
	/* uncompressed_file_size */
	.word	6144
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_8

	/* 9: Xamarin.AndroidX.AppCompat.dll */
	/* uncompressed_file_size */
	.word	317952
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_9

	/* 10: Xamarin.AndroidX.Core.dll */
	/* uncompressed_file_size */
	.word	142336
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_10

	/* 11: Xamarin.AndroidX.CustomView.dll */
	/* uncompressed_file_size */
	.word	8704
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_11

	/* 12: Xamarin.AndroidX.DrawerLayout.dll */
	/* uncompressed_file_size */
	.word	40960
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_12

	/* 13: Xamarin.AndroidX.Fragment.dll */
	/* uncompressed_file_size */
	.word	152576
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_13

	/* 14: Xamarin.AndroidX.Lifecycle.Common.dll */
	/* uncompressed_file_size */
	.word	14848
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_14

	/* 15: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll */
	/* uncompressed_file_size */
	.word	15872
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_15

	/* 16: Xamarin.AndroidX.Lifecycle.ViewModel.dll */
	/* uncompressed_file_size */
	.word	16384
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_16

	/* 17: Xamarin.AndroidX.Loader.dll */
	/* uncompressed_file_size */
	.word	36352
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_17

	/* 18: Xamarin.AndroidX.SavedState.dll */
	/* uncompressed_file_size */
	.word	12800
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_18

	/* 19: Xamarin.Essentials.dll */
	/* uncompressed_file_size */
	.word	24576
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_19

	/* 20: Xamarin.Google.Guava.ListenableFuture.dll */
	/* uncompressed_file_size */
	.word	18072
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_20

	/* 21: mscorlib.dll */
	/* uncompressed_file_size */
	.word	1870848
	/* loaded */
	.byte	0
	/* data */
	.zero	3
	.xword	compressed_assembly_data_21

	.size	.L.compressed_assembly_descriptors, 352
	.section	.data.compressed_assemblies,"aw",@progbits
	.type	compressed_assemblies, @object
	.p2align	3
	.global	compressed_assemblies
compressed_assemblies:
	/* count */
	.word	22
	/* descriptors */
	.zero	4
	.xword	.L.compressed_assembly_descriptors
	.size	compressed_assemblies, 16
