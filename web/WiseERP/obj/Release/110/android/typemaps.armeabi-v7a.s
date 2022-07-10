	.arch	armv7-a
	.syntax unified
	.eabi_attribute 67, "2.09"	@ Tag_conformance
	.eabi_attribute 6, 10	@ Tag_CPU_arch
	.eabi_attribute 7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute 8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute 9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute 16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute 17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute 20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute 38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 14, 0	@ Tag_ABI_PCS_R9_use
	.file	"typemaps.armeabi-v7a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",%progbits
	.type	map_module_count, %object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	15
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",%progbits
	.type	java_type_count, %object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	329
/* java_type_count: END */

	.include	"typemaps.armeabi-v7a-shared.inc"
	.include	"typemaps.armeabi-v7a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",%progbits
	.type	map_modules, %object
	.p2align	2
	.global	map_modules
map_modules:
	/* module_uuid: 8c81d503-ba08-4e9e-955b-8e3f46e6259d */
	.byte	0x03, 0xd5, 0x81, 0x8c, 0x08, 0xba, 0x9e, 0x4e, 0x95, 0x5b, 0x8e, 0x3f, 0x46, 0xe6, 0x25, 0x9d
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	1
	/* map */
	.long	module0_managed_to_java
	/* duplicate_map */
	.long	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.DrawerLayout */
	.long	.L.map_aname.0
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 1d973306-500c-45bc-a7d7-f86648aa18d4 */
	.byte	0x06, 0x33, 0x97, 0x1d, 0x0c, 0x50, 0xbc, 0x45, 0xa7, 0xd7, 0xf8, 0x66, 0x48, 0xaa, 0x18, 0xd4
	/* entry_count */
	.long	4
	/* duplicate_count */
	.long	3
	/* map */
	.long	module1_managed_to_java
	/* duplicate_map */
	.long	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.Common */
	.long	.L.map_aname.1
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 48a3ea11-dc70-4441-bafd-a047df360852 */
	.byte	0x11, 0xea, 0xa3, 0x48, 0x70, 0xdc, 0x41, 0x44, 0xba, 0xfd, 0xa0, 0x47, 0xdf, 0x36, 0x08, 0x52
	/* entry_count */
	.long	25
	/* duplicate_count */
	.long	14
	/* map */
	.long	module2_managed_to_java
	/* duplicate_map */
	.long	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Core */
	.long	.L.map_aname.2
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: c76ff11b-7138-4abb-8c41-f6ce0b2c9f68 */
	.byte	0x1b, 0xf1, 0x6f, 0xc7, 0x38, 0x71, 0xbb, 0x4a, 0x8c, 0x41, 0xf6, 0xce, 0x0b, 0x2c, 0x9f, 0x68
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	2
	/* map */
	.long	module3_managed_to_java
	/* duplicate_map */
	.long	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.SavedState */
	.long	.L.map_aname.3
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 81cf6058-7da8-4e7f-8564-b8af0b8facbe */
	.byte	0x58, 0x60, 0xcf, 0x81, 0xa8, 0x7d, 0x7f, 0x4e, 0x85, 0x64, 0xb8, 0xaf, 0x0b, 0x8f, 0xac, 0xbe
	/* entry_count */
	.long	237
	/* duplicate_count */
	.long	120
	/* map */
	.long	module4_managed_to_java
	/* duplicate_map */
	.long	module4_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.long	.L.map_aname.4
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 6af61659-5025-49b3-9422-56a118315201 */
	.byte	0x59, 0x16, 0xf6, 0x6a, 0x25, 0x50, 0xb3, 0x49, 0x94, 0x22, 0x56, 0xa1, 0x18, 0x31, 0x52, 0x01
	/* entry_count */
	.long	10
	/* duplicate_count */
	.long	5
	/* map */
	.long	module5_managed_to_java
	/* duplicate_map */
	.long	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Fragment */
	.long	.L.map_aname.5
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: c2f3bd5d-bec7-4d57-bd50-23501c859530 */
	.byte	0x5d, 0xbd, 0xf3, 0xc2, 0xc7, 0xbe, 0x57, 0x4d, 0xbd, 0x50, 0x23, 0x50, 0x1c, 0x85, 0x95, 0x30
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module6_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Essentials */
	.long	.L.map_aname.6
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 39474576-1024-4319-8815-86282e2971d8 */
	.byte	0x76, 0x45, 0x47, 0x39, 0x24, 0x10, 0x19, 0x43, 0x88, 0x15, 0x86, 0x28, 0x2e, 0x29, 0x71, 0xd8
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	4
	/* map */
	.long	module7_managed_to_java
	/* duplicate_map */
	.long	module7_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Loader */
	.long	.L.map_aname.7
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: b034fa80-29bd-4559-8354-26a743f74253 */
	.byte	0x80, 0xfa, 0x34, 0xb0, 0xbd, 0x29, 0x59, 0x45, 0x83, 0x54, 0x26, 0xa7, 0x43, 0xf7, 0x42, 0x53
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module8_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.AndroidX.Activity */
	.long	.L.map_aname.8
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 1dd29e96-03e8-4ece-a9d5-831659fe4014 */
	.byte	0x96, 0x9e, 0xd2, 0x1d, 0xe8, 0x03, 0xce, 0x4e, 0xa9, 0xd5, 0x83, 0x16, 0x59, 0xfe, 0x40, 0x14
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module9_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: WiseERP */
	.long	.L.map_aname.9
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 9ac1089a-eef9-4b98-b18e-ecbbdf857cee */
	.byte	0x9a, 0x08, 0xc1, 0x9a, 0xf9, 0xee, 0x98, 0x4b, 0xb1, 0x8e, 0xec, 0xbb, 0xdf, 0x85, 0x7c, 0xee
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	2
	/* map */
	.long	module10_managed_to_java
	/* duplicate_map */
	.long	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core */
	.long	.L.map_aname.10
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 5d71c2a3-54dd-4890-8b03-0874d6551eff */
	.byte	0xa3, 0xc2, 0x71, 0x5d, 0xdd, 0x54, 0x90, 0x48, 0x8b, 0x03, 0x08, 0x74, 0xd6, 0x55, 0x1e, 0xff
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	1
	/* map */
	.long	module11_managed_to_java
	/* duplicate_map */
	.long	module11_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CustomView */
	.long	.L.map_aname.11
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 379d77c4-cf8a-4445-860b-68af3453eb4e */
	.byte	0xc4, 0x77, 0x9d, 0x37, 0x8a, 0xcf, 0x45, 0x44, 0x86, 0x0b, 0x68, 0xaf, 0x34, 0x53, 0xeb, 0x4e
	/* entry_count */
	.long	30
	/* duplicate_count */
	.long	17
	/* map */
	.long	module12_managed_to_java
	/* duplicate_map */
	.long	module12_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.AppCompat */
	.long	.L.map_aname.12
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	1
	/* map */
	.long	module13_managed_to_java
	/* duplicate_map */
	.long	module13_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.long	.L.map_aname.13
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 965ee4e5-b5e4-4fc6-9599-a10985f821f3 */
	.byte	0xe5, 0xe4, 0x5e, 0x96, 0xe4, 0xb5, 0xc6, 0x4f, 0x95, 0x99, 0xa1, 0x09, 0x85, 0xf8, 0x21, 0xf3
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	3
	/* map */
	.long	module14_managed_to_java
	/* duplicate_map */
	.long	module14_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel */
	.long	.L.map_aname.14
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	.size	map_modules, 720
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",%progbits
	.type	map_java, %object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554719
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	55
	.zero	1

	/* #1 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	38
	.zero	1

	/* #2 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	33
	.zero	1

	/* #3 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554725
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	40
	.zero	1

	/* #4 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	47
	.zero	1

	/* #5 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554730
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	61
	.zero	1

	/* #6 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554731
	/* java_name */
	.ascii	"android/app/Application"
	.zero	58
	.zero	1

	/* #7 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	31
	.zero	1

	/* #8 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	63
	.zero	1

	/* #9 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554738
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	56
	.zero	1

	/* #10 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	47
	.zero	1

	/* #11 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	46
	.zero	1

	/* #12 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554741
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	52
	.zero	1

	/* #13 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554739
	/* java_name */
	.ascii	"android/content/Context"
	.zero	58
	.zero	1

	/* #14 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554743
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	51
	.zero	1

	/* #15 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	50
	.zero	1

	/* #16 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554740
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	59
	.zero	1

	/* #17 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554751
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	53
	.zero	1

	/* #18 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	48
	.zero	1

	/* #19 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	41
	.zero	1

	/* #20 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	15
	.zero	1

	/* #21 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554759
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	51
	.zero	1

	/* #22 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554761
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	48
	.zero	1

	/* #23 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554764
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	47
	.zero	1

	/* #24 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	48
	.zero	1

	/* #25 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554766
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	52
	.zero	1

	/* #26 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	49
	.zero	1

	/* #27 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554706
	/* java_name */
	.ascii	"android/graphics/BlendMode"
	.zero	55
	.zero	1

	/* #28 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554705
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	58
	.zero	1

	/* #29 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	53
	.zero	1

	/* #30 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554708
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	58
	.zero	1

	/* #31 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	59
	.zero	1

	/* #32 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554710
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	59
	.zero	1

	/* #33 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554711
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	54
	.zero	1

	/* #34 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554712
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	49
	.zero	1

	/* #35 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554713
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	60
	.zero	1

	/* #36 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554714
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	59
	.zero	1

	/* #37 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	47
	.zero	1

	/* #38 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	38
	.zero	1

	/* #39 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554702
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	66
	.zero	1

	/* #40 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554690
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	60
	.zero	1

	/* #41 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554691
	/* java_name */
	.ascii	"android/os/Build"
	.zero	65
	.zero	1

	/* #42 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554692
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	57
	.zero	1

	/* #43 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554694
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	64
	.zero	1

	/* #44 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	63
	.zero	1

	/* #45 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554699
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	64
	.zero	1

	/* #46 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554700
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	64
	.zero	1

	/* #47 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	60
	.zero	1

	/* #48 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	52
	.zero	1

	/* #49 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554688
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	45
	.zero	1

	/* #50 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554812
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	47
	.zero	1

	/* #51 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	56
	.zero	1

	/* #52 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554684
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	54
	.zero	1

	/* #53 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554687
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	57
	.zero	1

	/* #54 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554620
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	58
	.zero	1

	/* #55 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	49
	.zero	1

	/* #56 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554625
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	54
	.zero	1

	/* #57 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	57
	.zero	1

	/* #58 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	41
	.zero	1

	/* #59 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554627
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	49
	.zero	1

	/* #60 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554628
	/* java_name */
	.ascii	"android/view/Display"
	.zero	61
	.zero	1

	/* #61 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554629
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	59
	.zero	1

	/* #62 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	58
	.zero	1

	/* #63 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	60
	.zero	1

	/* #64 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	51
	.zero	1

	/* #65 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554654
	/* java_name */
	.ascii	"android/view/KeyboardShortcutGroup"
	.zero	47
	.zero	1

	/* #66 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554608
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	54
	.zero	1

	/* #67 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	46
	.zero	1

	/* #68 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	45
	.zero	1

	/* #69 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	64
	.zero	1

	/* #70 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554659
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	56
	.zero	1

	/* #71 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	60
	.zero	1

	/* #72 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	37
	.zero	1

	/* #73 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	36
	.zero	1

	/* #74 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554613
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	57
	.zero	1

	/* #75 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554662
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	57
	.zero	1

	/* #76 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	61
	.zero	1

	/* #77 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/view/View"
	.zero	64
	.zero	1

	/* #78 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	48
	.zero	1

	/* #79 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	36
	.zero	1

	/* #80 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554666
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	59
	.zero	1

	/* #81 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554667
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	46
	.zero	1

	/* #82 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554668
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	40
	.zero	1

	/* #83 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	57
	.zero	1

	/* #84 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	58
	.zero	1

	/* #85 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554670
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	48
	.zero	1

	/* #86 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554614
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	52
	.zero	1

	/* #87 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	34
	.zero	1

	/* #88 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554617
	/* java_name */
	.ascii	"android/view/Window"
	.zero	62
	.zero	1

	/* #89 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	53
	.zero	1

	/* #90 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	55
	.zero	1

	/* #91 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554651
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	42
	.zero	1

	/* #92 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554672
	/* java_name */
	.ascii	"android/view/WindowMetrics"
	.zero	55
	.zero	1

	/* #93 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554677
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	36
	.zero	1

	/* #94 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	30
	.zero	1

	/* #95 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554678
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	35
	.zero	1

	/* #96 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554673
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	49
	.zero	1

	/* #97 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	46
	.zero	1

	/* #98 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	59
	.zero	1

	/* #99 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554582
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	55
	.zero	1

	/* #100 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	32
	.zero	1

	/* #101 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554587
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	60
	.zero	1

	/* #102 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554588
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	58
	.zero	1

	/* #103 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554589
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	55
	.zero	1

	/* #104 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554590
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	46
	.zero	1

	/* #105 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	52
	.zero	1

	/* #106 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554585
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	58
	.zero	1

	/* #107 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554595
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	61
	.zero	1

	/* #108 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"androidx/activity/ComponentActivity"
	.zero	46
	.zero	1

	/* #109 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar"
	.zero	49
	.zero	1

	/* #110 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554475
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$LayoutParams"
	.zero	36
	.zero	1

	/* #111 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener"
	.zero	24
	.zero	1

	/* #112 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnNavigationListener"
	.zero	28
	.zero	1

	/* #113 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$Tab"
	.zero	45
	.zero	1

	/* #114 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$TabListener"
	.zero	37
	.zero	1

	/* #115 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554489
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle"
	.zero	37
	.zero	1

	/* #116 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$Delegate"
	.zero	28
	.zero	1

	/* #117 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	20
	.zero	1

	/* #118 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554494
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatActivity"
	.zero	41
	.zero	1

	/* #119 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatCallback"
	.zero	41
	.zero	1

	/* #120 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554495
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDelegate"
	.zero	41
	.zero	1

	/* #121 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"androidx/appcompat/graphics/drawable/DrawerArrowDrawable"
	.zero	25
	.zero	1

	/* #122 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554512
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode"
	.zero	47
	.zero	1

	/* #123 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode$Callback"
	.zero	38
	.zero	1

	/* #124 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554516
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder"
	.zero	41
	.zero	1

	/* #125 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder$Callback"
	.zero	32
	.zero	1

	/* #126 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554525
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuItemImpl"
	.zero	40
	.zero	1

	/* #127 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter"
	.zero	39
	.zero	1

	/* #128 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter$Callback"
	.zero	30
	.zero	1

	/* #129 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuView"
	.zero	44
	.zero	1

	/* #130 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554526
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/SubMenuBuilder"
	.zero	38
	.zero	1

	/* #131 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/DecorToolbar"
	.zero	43
	.zero	1

	/* #132 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554510
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView"
	.zero	30
	.zero	1

	/* #133 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554511
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	7
	.zero	1

	/* #134 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554499
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar"
	.zero	48
	.zero	1

	/* #135 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener"
	.zero	24
	.zero	1

	/* #136 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554500
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	15
	.zero	1

	/* #137 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554494
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat"
	.zero	49
	.zero	1

	/* #138 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	14
	.zero	1

	/* #139 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$PermissionCompatDelegate"
	.zero	24
	.zero	1

	/* #140 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	10
	.zero	1

	/* #141 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554501
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity"
	.zero	46
	.zero	1

	/* #142 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554502
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity$ExtraData"
	.zero	36
	.zero	1

	/* #143 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554503
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback"
	.zero	42
	.zero	1

	/* #144 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	12
	.zero	1

	/* #145 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554507
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder"
	.zero	47
	.zero	1

	/* #146 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder$SupportParentable"
	.zero	29
	.zero	1

	/* #147 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554492
	/* java_name */
	.ascii	"androidx/core/content/ContextCompat"
	.zero	46
	.zero	1

	/* #148 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554493
	/* java_name */
	.ascii	"androidx/core/content/pm/PackageInfoCompat"
	.zero	39
	.zero	1

	/* #149 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenu"
	.zero	42
	.zero	1

	/* #150 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenuItem"
	.zero	38
	.zero	1

	/* #151 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider"
	.zero	48
	.zero	1

	/* #152 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$SubUiVisibilityListener"
	.zero	24
	.zero	1

	/* #153 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$VisibilityListener"
	.zero	29
	.zero	1

	/* #154 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554479
	/* java_name */
	.ascii	"androidx/core/view/DragAndDropPermissionsCompat"
	.zero	34
	.zero	1

	/* #155 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554484
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher"
	.zero	44
	.zero	1

	/* #156 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher$Component"
	.zero	34
	.zero	1

	/* #157 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554487
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorCompat"
	.zero	36
	.zero	1

	/* #158 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorListener"
	.zero	34
	.zero	1

	/* #159 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorUpdateListener"
	.zero	28
	.zero	1

	/* #160 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/customview/widget/Openable"
	.zero	46
	.zero	1

	/* #161 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout"
	.zero	40
	.zero	1

	/* #162 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout$DrawerListener"
	.zero	25
	.zero	1

	/* #163 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554468
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment"
	.zero	51
	.zero	1

	/* #164 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment$SavedState"
	.zero	40
	.zero	1

	/* #165 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentActivity"
	.zero	43
	.zero	1

	/* #166 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554470
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentFactory"
	.zero	44
	.zero	1

	/* #167 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554471
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager"
	.zero	44
	.zero	1

	/* #168 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$BackStackEntry"
	.zero	29
	.zero	1

	/* #169 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	17
	.zero	1

	/* #170 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$OnBackStackChangedListener"
	.zero	17
	.zero	1

	/* #171 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentTransaction"
	.zero	40
	.zero	1

	/* #172 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/HasDefaultViewModelProviderFactory"
	.zero	28
	.zero	1

	/* #173 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle"
	.zero	53
	.zero	1

	/* #174 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle$State"
	.zero	47
	.zero	1

	/* #175 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleObserver"
	.zero	45
	.zero	1

	/* #176 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleOwner"
	.zero	48
	.zero	1

	/* #177 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/LiveData"
	.zero	54
	.zero	1

	/* #178 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/Observer"
	.zero	54
	.zero	1

	/* #179 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider"
	.zero	45
	.zero	1

	/* #180 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider$Factory"
	.zero	37
	.zero	1

	/* #181 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStore"
	.zero	48
	.zero	1

	/* #182 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStoreOwner"
	.zero	43
	.zero	1

	/* #183 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554452
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager"
	.zero	48
	.zero	1

	/* #184 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager$LoaderCallbacks"
	.zero	32
	.zero	1

	/* #185 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554447
	/* java_name */
	.ascii	"androidx/loader/content/Loader"
	.zero	51
	.zero	1

	/* #186 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCanceledListener"
	.zero	28
	.zero	1

	/* #187 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCompleteListener"
	.zero	28
	.zero	1

	/* #188 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry"
	.zero	43
	.zero	1

	/* #189 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry$SavedStateProvider"
	.zero	24
	.zero	1

	/* #190 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistryOwner"
	.zero	38
	.zero	1

	/* #191 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	31
	.zero	1

	/* #192 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	27
	.zero	1

	/* #193 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"crc64e8372f7ef26860b1/MainActivity"
	.zero	47
	.zero	1

	/* #194 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	64
	.zero	1

	/* #195 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554977
	/* java_name */
	.ascii	"java/io/File"
	.zero	69
	.zero	1

	/* #196 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554978
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	59
	.zero	1

	/* #197 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554979
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	58
	.zero	1

	/* #198 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	64
	.zero	1

	/* #199 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554987
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	62
	.zero	1

	/* #200 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554984
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	62
	.zero	1

	/* #201 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554986
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	51
	.zero	1

	/* #202 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554990
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	61
	.zero	1

	/* #203 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554992
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	62
	.zero	1

	/* #204 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	61
	.zero	1

	/* #205 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554993
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	61
	.zero	1

	/* #206 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554994
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	67
	.zero	1

	/* #207 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	61
	.zero	1

	/* #208 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554919
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	64
	.zero	1

	/* #209 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554920
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	67
	.zero	1

	/* #210 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	59
	.zero	1

	/* #211 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554921
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	62
	.zero	1

	/* #212 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554922
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	66
	.zero	1

	/* #213 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554938
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	53
	.zero	1

	/* #214 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554939
	/* java_name */
	.ascii	"java/lang/ClassLoader"
	.zero	60
	.zero	1

	/* #215 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554923
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	49
	.zero	1

	/* #216 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	62
	.zero	1

	/* #217 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	61
	.zero	1

	/* #218 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554924
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	65
	.zero	1

	/* #219 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554941
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	67
	.zero	1

	/* #220 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554943
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	66
	.zero	1

	/* #221 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554925
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	62
	.zero	1

	/* #222 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554926
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	66
	.zero	1

	/* #223 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554954
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	47
	.zero	1

	/* #224 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554955
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	50
	.zero	1

	/* #225 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554956
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	46
	.zero	1

	/* #226 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554928
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	64
	.zero	1

	/* #227 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	63
	.zero	1

	/* #228 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554959
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	59
	.zero	1

	/* #229 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554929
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	67
	.zero	1

	/* #230 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554960
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	51
	.zero	1

	/* #231 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554961
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	51
	.zero	1

	/* #232 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554962
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	65
	.zero	1

	/* #233 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554930
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	65
	.zero	1

	/* #234 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554964
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	43
	.zero	1

	/* #235 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	63
	.zero	1

	/* #236 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554931
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	55
	.zero	1

	/* #237 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554965
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	54
	.zero	1

	/* #238 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554932
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	66
	.zero	1

	/* #239 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554933
	/* java_name */
	.ascii	"java/lang/String"
	.zero	65
	.zero	1

	/* #240 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554935
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	65
	.zero	1

	/* #241 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554937
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	62
	.zero	1

	/* #242 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554966
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	42
	.zero	1

	/* #243 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	50
	.zero	1

	/* #244 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	47
	.zero	1

	/* #245 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	45
	.zero	1

	/* #246 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	59
	.zero	1

	/* #247 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	51
	.zero	1

	/* #248 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554836
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	56
	.zero	1

	/* #249 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554838
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	55
	.zero	1

	/* #250 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554840
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	55
	.zero	1

	/* #251 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554841
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	55
	.zero	1

	/* #252 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554842
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	67
	.zero	1

	/* #253 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554843
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	62
	.zero	1

	/* #254 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554844
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	59
	.zero	1

	/* #255 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554846
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	59
	.zero	1

	/* #256 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554848
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	57
	.zero	1

	/* #257 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554849
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	50
	.zero	1

	/* #258 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554851
	/* java_name */
	.ascii	"java/net/URI"
	.zero	69
	.zero	1

	/* #259 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554852
	/* java_name */
	.ascii	"java/net/URL"
	.zero	69
	.zero	1

	/* #260 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554853
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	59
	.zero	1

	/* #261 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554850
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	49
	.zero	1

	/* #262 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	66
	.zero	1

	/* #263 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554897
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	62
	.zero	1

	/* #264 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	52
	.zero	1

	/* #265 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	56
	.zero	1

	/* #266 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554899
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	52
	.zero	1

	/* #267 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	43
	.zero	1

	/* #268 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	43
	.zero	1

	/* #269 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	44
	.zero	1

	/* #270 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	42
	.zero	1

	/* #271 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	44
	.zero	1

	/* #272 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	44
	.zero	1

	/* #273 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554917
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	31
	.zero	1

	/* #274 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554882
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	59
	.zero	1

	/* #275 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	40
	.zero	1

	/* #276 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	39
	.zero	1

	/* #277 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	58
	.zero	1

	/* #278 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554887
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	55
	.zero	1

	/* #279 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554888
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	51
	.zero	1

	/* #280 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554890
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	44
	.zero	1

	/* #281 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	47
	.zero	1

	/* #282 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	49
	.zero	1

	/* #283 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554804
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	62
	.zero	1

	/* #284 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554793
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	61
	.zero	1

	/* #285 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Comparator"
	.zero	61
	.zero	1

	/* #286 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	60
	.zero	1

	/* #287 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	64
	.zero	1

	/* #288 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554813
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	64
	.zero	1

	/* #289 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	63
	.zero	1

	/* #290 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554863
	/* java_name */
	.ascii	"java/util/Random"
	.zero	65
	.zero	1

	/* #291 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/Spliterator"
	.zero	60
	.zero	1

	/* #292 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	52
	.zero	1

	/* #293 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	54
	.zero	1

	/* #294 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554879
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	52
	.zero	1

	/* #295 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/function/Consumer"
	.zero	54
	.zero	1

	/* #296 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/function/Function"
	.zero	54
	.zero	1

	/* #297 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/function/ToDoubleFunction"
	.zero	46
	.zero	1

	/* #298 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/function/ToIntFunction"
	.zero	49
	.zero	1

	/* #299 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"java/util/function/ToLongFunction"
	.zero	48
	.zero	1

	/* #300 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554552
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	58
	.zero	1

	/* #301 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	51
	.zero	1

	/* #302 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554554
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	49
	.zero	1

	/* #303 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	57
	.zero	1

	/* #304 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554568
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	50
	.zero	1

	/* #305 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554569
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	57
	.zero	1

	/* #306 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	57
	.zero	1

	/* #307 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	50
	.zero	1

	/* #308 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	51
	.zero	1

	/* #309 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	55
	.zero	1

	/* #310 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554572
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	48
	.zero	1

	/* #311 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	51
	.zero	1

	/* #312 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554551
	/* java_name */
	.ascii	"javax/security/auth/Subject"
	.zero	54
	.zero	1

	/* #313 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554547
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	50
	.zero	1

	/* #314 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554549
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	46
	.zero	1

	/* #315 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33555017
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	57
	.zero	1

	/* #316 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554789
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	42
	.zero	1

	/* #317 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	51
	.zero	1

	/* #318 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554810
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	50
	.zero	1

	/* #319 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554828
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	41
	.zero	1

	/* #320 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554600
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	32
	.zero	1

	/* #321 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554479
	/* java_name */
	.ascii	"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	8
	.zero	1

	/* #322 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554505
	/* java_name */
	.ascii	"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	8
	.zero	1

	/* #323 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	8
	.zero	1

	/* #324 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor"
	.zero	13
	.zero	1

	/* #325 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554461
	/* java_name */
	.ascii	"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	9
	.zero	1

	/* #326 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554478
	/* java_name */
	.ascii	"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	1
	.zero	1

	/* #327 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554936
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	47
	.zero	1

	/* #328 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554546
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	35
	.zero	1

	.size	map_java, 29610
/* Java to managed map: END */


/* java_name_width: START */
	.section	.rodata.java_name_width,"a",%progbits
	.type	java_name_width, %object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	82
/* java_name_width: END */
