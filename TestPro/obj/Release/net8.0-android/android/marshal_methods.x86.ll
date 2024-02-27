; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [154 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [308 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 42244203, ; 1: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 141
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 56
	i32 83839681, ; 5: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 130
	i32 123514077, ; 7: EPPlus.dll => 0x75cacdd => 35
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 159306688, ; 10: System.ComponentModel.Annotations => 0x97ed3c0 => 94
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 65
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 83
	i32 205061960, ; 13: System.ComponentModel => 0xc38ff48 => 97
	i32 216908349, ; 14: OfficeOpenXml.Core.ExcelPackage => 0xcedc23d => 57
	i32 220171995, ; 15: System.Diagnostics.Debug => 0xd1f8edb => 100
	i32 231814094, ; 16: System.Globalization => 0xdd133ce => 107
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 61
	i32 321963286, ; 19: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 367780167, ; 21: System.IO.Pipes => 0x15ebe147 => 113
	i32 379916513, ; 22: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 117
	i32 392610295, ; 24: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 25: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 26: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 93
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 71
	i32 456227837, ; 29: System.Web.HttpUtility.dll => 0x1b317bfd => 144
	i32 469710990, ; 30: System.dll => 0x1bff388e => 149
	i32 489220957, ; 31: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 32: System.ObjectModel => 0x1dbae811 => 123
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 50
	i32 538707440, ; 34: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 47
	i32 540030774, ; 36: System.IO.FileSystem.dll => 0x20303736 => 112
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 129
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 69
	i32 627931235, ; 39: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 40: System.Collections.Concurrent => 0x2814a96c => 90
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 145
	i32 709152836, ; 42: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 60
	i32 759454413, ; 43: System.Net.Requests => 0x2d445acd => 120
	i32 762598435, ; 44: System.IO.Pipes.dll => 0x2d745423 => 113
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 109
	i32 777317022, ; 46: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 47: Microsoft.Extensions.Options => 0x2f0980eb => 49
	i32 794464650, ; 48: EPPlus.Interfaces => 0x2f5a918a => 36
	i32 804715423, ; 49: System.Data.Common => 0x2ff6fb9f => 99
	i32 809851609, ; 50: System.Drawing.Common.dll => 0x30455ad9 => 58
	i32 823281589, ; 51: System.Private.Uri.dll => 0x311247b5 => 124
	i32 830298997, ; 52: System.IO.Compression.Brotli => 0x317d5b75 => 108
	i32 869139383, ; 53: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 877678880, ; 54: System.Globalization.dll => 0x34505120 => 107
	i32 880668424, ; 55: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 56: System.ComponentModel.Primitives.dll => 0x35e25008 => 95
	i32 914719114, ; 57: TestPro.dll => 0x3685818a => 89
	i32 918734561, ; 58: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 961460050, ; 59: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 60: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 975236339, ; 61: System.Diagnostics.Tracing => 0x3a20ecf3 => 103
	i32 975874589, ; 62: System.Xml.XDocument => 0x3a2aaa1d => 147
	i32 990727110, ; 63: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 64: System.Collections.dll => 0x3b2c715c => 93
	i32 994442037, ; 65: System.IO.FileSystem => 0x3b45fb35 => 112
	i32 999186168, ; 66: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 46
	i32 1012816738, ; 67: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 82
	i32 1019214401, ; 68: System.Drawing => 0x3cbffa41 => 105
	i32 1028951442, ; 69: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 43
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 62
	i32 1036536393, ; 71: System.Drawing.Primitives.dll => 0x3dc84a49 => 104
	i32 1043950537, ; 72: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 73: System.Linq.Expressions.dll => 0x3e444eb4 => 115
	i32 1052210849, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1082857460, ; 75: System.ComponentModel.TypeConverter => 0x408b17f4 => 96
	i32 1083751839, ; 76: System.IO.Packaging => 0x4098bd9f => 59
	i32 1084122840, ; 77: Xamarin.Kotlin.StdLib => 0x409e66d8 => 87
	i32 1098259244, ; 78: System => 0x41761b2c => 149
	i32 1106973742, ; 79: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 40
	i32 1108272742, ; 80: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 81: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 82: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 83: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 84: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 44
	i32 1178241025, ; 85: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 79
	i32 1208641965, ; 86: System.Diagnostics.Process => 0x480a69ad => 102
	i32 1260983243, ; 87: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 88: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1299727211, ; 89: TestPro => 0x4d78436b => 89
	i32 1308624726, ; 90: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1324164729, ; 91: System.Linq => 0x4eed2679 => 116
	i32 1336711579, ; 92: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1364015309, ; 93: System.IO => 0x514d38cd => 114
	i32 1373134921, ; 94: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 95: Xamarin.AndroidX.SavedState => 0x52114ed3 => 82
	i32 1379779777, ; 96: System.Resources.ResourceManager => 0x523dc4c1 => 128
	i32 1406073936, ; 97: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 66
	i32 1430672901, ; 98: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 99: System.Formats.Asn1.dll => 0x568cd628 => 106
	i32 1457743152, ; 100: System.Runtime.Extensions.dll => 0x56e36530 => 129
	i32 1461004990, ; 101: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 102: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 63
	i32 1470490898, ; 104: Microsoft.Extensions.Primitives => 0x57a5e912 => 50
	i32 1479011226, ; 105: EPPlus => 0x5827eb9a => 35
	i32 1480492111, ; 106: System.IO.Compression.Brotli.dll => 0x583e844f => 108
	i32 1521091094, ; 107: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 46
	i32 1526286932, ; 108: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 109: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 140
	i32 1551954004, ; 110: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 51
	i32 1565862583, ; 111: System.IO.FileSystem.Primitives => 0x5d552ab7 => 110
	i32 1622152042, ; 112: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 113: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 85
	i32 1631539578, ; 114: EPPlus.System.Drawing.dll => 0x613f517a => 37
	i32 1632842087, ; 115: Microsoft.Extensions.Configuration.Json => 0x61533167 => 41
	i32 1636350590, ; 116: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 68
	i32 1639515021, ; 117: System.Net.Http.dll => 0x61b9038d => 118
	i32 1639986890, ; 118: System.Text.RegularExpressions => 0x61c036ca => 140
	i32 1657153582, ; 119: System.Runtime => 0x62c6282e => 132
	i32 1658251792, ; 120: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 86
	i32 1677501392, ; 121: System.Net.Primitives.dll => 0x63fca3d0 => 119
	i32 1679769178, ; 122: System.Security.Cryptography => 0x641f3e5a => 134
	i32 1701541528, ; 123: System.Diagnostics.Debug.dll => 0x656b7698 => 100
	i32 1726116996, ; 124: System.Reflection.dll => 0x66e27484 => 127
	i32 1729485958, ; 125: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 64
	i32 1743415430, ; 126: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1766324549, ; 127: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 83
	i32 1770582343, ; 128: Microsoft.Extensions.Logging.dll => 0x6988f147 => 47
	i32 1780572499, ; 129: Mono.Android.Runtime.dll => 0x6a216153 => 152
	i32 1782862114, ; 130: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 131: Xamarin.AndroidX.Fragment => 0x6a96652d => 71
	i32 1793755602, ; 132: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 133: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813058853, ; 134: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 87
	i32 1813201214, ; 135: Xamarin.Google.Android.Material => 0x6c13413e => 86
	i32 1818569960, ; 136: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 80
	i32 1824175904, ; 137: System.Text.Encoding.Extensions => 0x6cbab720 => 137
	i32 1828688058, ; 138: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 48
	i32 1853025655, ; 139: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 140: System.Linq.Expressions => 0x6ec71a65 => 115
	i32 1875935024, ; 141: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 142: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1900610850, ; 143: System.Resources.ResourceManager.dll => 0x71490522 => 128
	i32 1910275211, ; 144: System.Collections.NonGeneric.dll => 0x71dc7c8b => 91
	i32 1939592360, ; 145: System.Private.Xml.Linq => 0x739bd4a8 => 125
	i32 1953182387, ; 146: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 147: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 38
	i32 2003115576, ; 148: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 149: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2045470958, ; 150: System.Private.Xml => 0x79eb68ee => 126
	i32 2055257422, ; 151: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2066184531, ; 152: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2072397586, ; 153: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 45
	i32 2079903147, ; 154: System.Runtime.dll => 0x7bf8cdab => 132
	i32 2090596640, ; 155: System.Numerics.Vectors => 0x7c9bf920 => 122
	i32 2127167465, ; 156: System.Console => 0x7ec9ffe9 => 98
	i32 2142473426, ; 157: System.Collections.Specialized => 0x7fb38cd2 => 92
	i32 2143465592, ; 158: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 51
	i32 2159891885, ; 159: Microsoft.Maui => 0x80bd55ad => 54
	i32 2169148018, ; 160: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 161: Microsoft.Extensions.Options.dll => 0x820d22b3 => 49
	i32 2192057212, ; 162: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 48
	i32 2193016926, ; 163: System.ObjectModel.dll => 0x82b6c85e => 123
	i32 2201107256, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 88
	i32 2201231467, ; 165: System.Net.Http => 0x8334206b => 118
	i32 2207618523, ; 166: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 167: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 39
	i32 2279755925, ; 168: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 81
	i32 2295906218, ; 169: System.Net.Sockets => 0x88d8bfaa => 121
	i32 2298796049, ; 170: EPPlus.System.Drawing => 0x8904d811 => 37
	i32 2303942373, ; 171: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 172: System.Private.CoreLib.dll => 0x896b7878 => 150
	i32 2353062107, ; 173: System.Net.Primitives => 0x8c40e0db => 119
	i32 2366048013, ; 174: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 175: System.Xml.ReaderWriter.dll => 0x8d24e767 => 146
	i32 2371007202, ; 176: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 38
	i32 2383496789, ; 177: System.Security.Principal.Windows.dll => 0x8e114655 => 135
	i32 2395872292, ; 178: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 179: System.Web.HttpUtility => 0x8f24faee => 144
	i32 2427813419, ; 180: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 181: System.Console.dll => 0x912896e5 => 98
	i32 2454642406, ; 182: System.Text.Encoding.dll => 0x924edee6 => 138
	i32 2458678730, ; 183: System.Net.Sockets.dll => 0x928c75ca => 121
	i32 2475788418, ; 184: Java.Interop.dll => 0x93918882 => 151
	i32 2480646305, ; 185: Microsoft.Maui.Controls => 0x93dba8a1 => 52
	i32 2503351294, ; 186: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2548432851, ; 187: EPPlus.Interfaces.dll => 0x97e5ffd3 => 36
	i32 2550873716, ; 188: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2576534780, ; 189: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 190: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 137
	i32 2589602615, ; 191: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2592341985, ; 192: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 44
	i32 2593496499, ; 193: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 194: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 88
	i32 2617129537, ; 195: System.Private.Xml.dll => 0x9bfe3a41 => 126
	i32 2620871830, ; 196: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 68
	i32 2626831493, ; 197: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2664396074, ; 198: System.Xml.XDocument.dll => 0x9ecf752a => 147
	i32 2665622720, ; 199: System.Drawing.Primitives => 0x9ee22cc0 => 104
	i32 2676780864, ; 200: System.Data.Common.dll => 0x9f8c6f40 => 99
	i32 2693849962, ; 201: System.IO.dll => 0xa090e36a => 114
	i32 2717744543, ; 202: System.Security.Claims => 0xa1fd7d9f => 133
	i32 2724373263, ; 203: System.Runtime.Numerics.dll => 0xa262a30f => 131
	i32 2732626843, ; 204: Xamarin.AndroidX.Activity => 0xa2e0939b => 61
	i32 2737747696, ; 205: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 63
	i32 2740698338, ; 206: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 207: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 208: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 53
	i32 2764765095, ; 209: Microsoft.Maui.dll => 0xa4caf7a7 => 54
	i32 2765824710, ; 210: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 136
	i32 2778768386, ; 211: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 84
	i32 2785988530, ; 212: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 213: Microsoft.Maui.Graphics => 0xa7008e0b => 56
	i32 2803228030, ; 214: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 148
	i32 2810250172, ; 215: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 66
	i32 2853208004, ; 216: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 84
	i32 2861189240, ; 217: Microsoft.Maui.Essentials => 0xaa8a4878 => 55
	i32 2901442782, ; 218: System.Reflection => 0xacf080de => 127
	i32 2909740682, ; 219: System.Private.CoreLib => 0xad6f1e8a => 150
	i32 2911054922, ; 220: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 45
	i32 2916838712, ; 221: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 85
	i32 2919462931, ; 222: System.Numerics.Vectors.dll => 0xae037813 => 122
	i32 2942453041, ; 223: System.Xml.XPath.XDocument => 0xaf624531 => 148
	i32 2959614098, ; 224: System.ComponentModel.dll => 0xb0682092 => 97
	i32 2968338931, ; 225: System.Security.Principal.Windows => 0xb0ed41f3 => 135
	i32 2978675010, ; 226: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 3038032645, ; 227: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 228: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 229: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 77
	i32 3059408633, ; 230: Mono.Android.Runtime => 0xb65adef9 => 152
	i32 3059793426, ; 231: System.ComponentModel.Primitives => 0xb660be12 => 95
	i32 3099732863, ; 232: System.Security.Claims.dll => 0xb8c22b7f => 133
	i32 3103600923, ; 233: System.Formats.Asn1 => 0xb8fd311b => 106
	i32 3147165239, ; 234: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 103
	i32 3178803400, ; 235: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 78
	i32 3220365878, ; 236: System.Threading => 0xbff2e236 => 143
	i32 3258312781, ; 237: Xamarin.AndroidX.CardView => 0xc235e84d => 64
	i32 3280506390, ; 238: System.ComponentModel.Annotations.dll => 0xc3888e16 => 94
	i32 3299363146, ; 239: System.Text.Encoding => 0xc4a8494a => 138
	i32 3305363605, ; 240: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 241: System.Net.Requests.dll => 0xc5b097e4 => 120
	i32 3317135071, ; 242: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 69
	i32 3346324047, ; 243: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 79
	i32 3357674450, ; 244: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 245: System.Text.Json => 0xc82afec1 => 139
	i32 3362522851, ; 246: Xamarin.AndroidX.Core => 0xc86c06e3 => 67
	i32 3366347497, ; 247: Java.Interop => 0xc8a662e9 => 151
	i32 3374999561, ; 248: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 81
	i32 3381016424, ; 249: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 250: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 42
	i32 3458724246, ; 251: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 252: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 96
	i32 3476120550, ; 253: Mono.Android => 0xcf3163e6 => 153
	i32 3484440000, ; 254: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 255: System.Text.Json.dll => 0xcfbaacae => 139
	i32 3509114376, ; 256: System.Xml.Linq => 0xd128d608 => 145
	i32 3580758918, ; 257: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 258: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 259: System.Linq.dll => 0xd715a361 => 116
	i32 3638274909, ; 260: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 110
	i32 3641597786, ; 261: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3643446276, ; 262: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 263: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 78
	i32 3657292374, ; 264: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 39
	i32 3672681054, ; 265: Mono.Android.dll => 0xdae8aa5e => 153
	i32 3689375977, ; 266: System.Drawing.Common => 0xdbe768e9 => 58
	i32 3722202641, ; 267: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 41
	i32 3724971120, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 77
	i32 3748608112, ; 269: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 101
	i32 3751619990, ; 270: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3758424670, ; 271: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 40
	i32 3786282454, ; 272: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 65
	i32 3792276235, ; 273: System.Collections.NonGeneric => 0xe2098b0b => 91
	i32 3802395368, ; 274: System.Collections.Specialized.dll => 0xe2a3f2e8 => 92
	i32 3807198597, ; 275: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 60
	i32 3823082795, ; 276: System.Security.Cryptography.dll => 0xe3df9d2b => 134
	i32 3841636137, ; 277: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 43
	i32 3849253459, ; 278: System.Runtime.InteropServices.dll => 0xe56ef253 => 130
	i32 3896106733, ; 279: System.Collections.Concurrent.dll => 0xe839deed => 90
	i32 3896760992, ; 280: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 67
	i32 3920221145, ; 281: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 282: System.Xml.ReaderWriter => 0xea213423 => 146
	i32 3931092270, ; 283: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 80
	i32 3952357212, ; 284: System.IO.Packaging.dll => 0xeb942f5c => 59
	i32 3953953790, ; 285: System.Text.Encoding.CodePages => 0xebac8bfe => 136
	i32 3955647286, ; 286: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 62
	i32 3995665529, ; 287: OfficeOpenXml.Core.ExcelPackage.dll => 0xee290479 => 57
	i32 4003436829, ; 288: System.Diagnostics.Process.dll => 0xee9f991d => 102
	i32 4025784931, ; 289: System.Memory => 0xeff49a63 => 117
	i32 4046471985, ; 290: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 53
	i32 4068434129, ; 291: System.Private.Xml.Linq.dll => 0xf27f60d1 => 125
	i32 4073602200, ; 292: System.Threading.dll => 0xf2ce3c98 => 143
	i32 4091086043, ; 293: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 294: Microsoft.Maui.Essentials.dll => 0xf40add04 => 55
	i32 4099507663, ; 295: System.Drawing.dll => 0xf45985cf => 105
	i32 4100113165, ; 296: System.Private.Uri => 0xf462c30d => 124
	i32 4103439459, ; 297: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 298: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 42
	i32 4127667938, ; 299: System.IO.FileSystem.Watcher => 0xf60736e2 => 111
	i32 4150914736, ; 300: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4164802419, ; 301: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 111
	i32 4182413190, ; 302: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4213026141, ; 303: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 101
	i32 4249188766, ; 304: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 305: Microsoft.Maui.Controls.dll => 0xfea12dee => 52
	i32 4274976490, ; 306: System.Runtime.Numerics => 0xfecef6ea => 131
	i32 4292120959 ; 307: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [308 x i32] [
	i32 0, ; 0
	i32 9, ; 1
	i32 141, ; 2
	i32 33, ; 3
	i32 56, ; 4
	i32 17, ; 5
	i32 130, ; 6
	i32 35, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 94, ; 10
	i32 65, ; 11
	i32 83, ; 12
	i32 97, ; 13
	i32 57, ; 14
	i32 100, ; 15
	i32 107, ; 16
	i32 30, ; 17
	i32 61, ; 18
	i32 8, ; 19
	i32 72, ; 20
	i32 113, ; 21
	i32 141, ; 22
	i32 117, ; 23
	i32 142, ; 24
	i32 34, ; 25
	i32 28, ; 26
	i32 93, ; 27
	i32 71, ; 28
	i32 144, ; 29
	i32 149, ; 30
	i32 6, ; 31
	i32 123, ; 32
	i32 50, ; 33
	i32 27, ; 34
	i32 47, ; 35
	i32 112, ; 36
	i32 129, ; 37
	i32 69, ; 38
	i32 19, ; 39
	i32 90, ; 40
	i32 145, ; 41
	i32 60, ; 42
	i32 120, ; 43
	i32 113, ; 44
	i32 109, ; 45
	i32 25, ; 46
	i32 49, ; 47
	i32 36, ; 48
	i32 99, ; 49
	i32 58, ; 50
	i32 124, ; 51
	i32 108, ; 52
	i32 10, ; 53
	i32 107, ; 54
	i32 24, ; 55
	i32 95, ; 56
	i32 89, ; 57
	i32 21, ; 58
	i32 14, ; 59
	i32 72, ; 60
	i32 103, ; 61
	i32 147, ; 62
	i32 23, ; 63
	i32 93, ; 64
	i32 112, ; 65
	i32 46, ; 66
	i32 82, ; 67
	i32 105, ; 68
	i32 43, ; 69
	i32 62, ; 70
	i32 104, ; 71
	i32 4, ; 72
	i32 115, ; 73
	i32 74, ; 74
	i32 96, ; 75
	i32 59, ; 76
	i32 87, ; 77
	i32 149, ; 78
	i32 40, ; 79
	i32 26, ; 80
	i32 20, ; 81
	i32 16, ; 82
	i32 22, ; 83
	i32 44, ; 84
	i32 79, ; 85
	i32 102, ; 86
	i32 2, ; 87
	i32 70, ; 88
	i32 89, ; 89
	i32 11, ; 90
	i32 116, ; 91
	i32 31, ; 92
	i32 114, ; 93
	i32 32, ; 94
	i32 82, ; 95
	i32 128, ; 96
	i32 66, ; 97
	i32 0, ; 98
	i32 106, ; 99
	i32 129, ; 100
	i32 6, ; 101
	i32 109, ; 102
	i32 63, ; 103
	i32 50, ; 104
	i32 35, ; 105
	i32 108, ; 106
	i32 46, ; 107
	i32 30, ; 108
	i32 140, ; 109
	i32 51, ; 110
	i32 110, ; 111
	i32 76, ; 112
	i32 85, ; 113
	i32 37, ; 114
	i32 41, ; 115
	i32 68, ; 116
	i32 118, ; 117
	i32 140, ; 118
	i32 132, ; 119
	i32 86, ; 120
	i32 119, ; 121
	i32 134, ; 122
	i32 100, ; 123
	i32 127, ; 124
	i32 64, ; 125
	i32 1, ; 126
	i32 83, ; 127
	i32 47, ; 128
	i32 152, ; 129
	i32 17, ; 130
	i32 71, ; 131
	i32 9, ; 132
	i32 76, ; 133
	i32 87, ; 134
	i32 86, ; 135
	i32 80, ; 136
	i32 137, ; 137
	i32 48, ; 138
	i32 26, ; 139
	i32 115, ; 140
	i32 8, ; 141
	i32 2, ; 142
	i32 128, ; 143
	i32 91, ; 144
	i32 125, ; 145
	i32 13, ; 146
	i32 38, ; 147
	i32 5, ; 148
	i32 74, ; 149
	i32 126, ; 150
	i32 73, ; 151
	i32 4, ; 152
	i32 45, ; 153
	i32 132, ; 154
	i32 122, ; 155
	i32 98, ; 156
	i32 92, ; 157
	i32 51, ; 158
	i32 54, ; 159
	i32 12, ; 160
	i32 49, ; 161
	i32 48, ; 162
	i32 123, ; 163
	i32 88, ; 164
	i32 118, ; 165
	i32 14, ; 166
	i32 39, ; 167
	i32 81, ; 168
	i32 121, ; 169
	i32 37, ; 170
	i32 18, ; 171
	i32 150, ; 172
	i32 119, ; 173
	i32 12, ; 174
	i32 146, ; 175
	i32 38, ; 176
	i32 135, ; 177
	i32 13, ; 178
	i32 144, ; 179
	i32 10, ; 180
	i32 98, ; 181
	i32 138, ; 182
	i32 121, ; 183
	i32 151, ; 184
	i32 52, ; 185
	i32 16, ; 186
	i32 36, ; 187
	i32 11, ; 188
	i32 15, ; 189
	i32 137, ; 190
	i32 142, ; 191
	i32 44, ; 192
	i32 20, ; 193
	i32 88, ; 194
	i32 126, ; 195
	i32 68, ; 196
	i32 15, ; 197
	i32 147, ; 198
	i32 104, ; 199
	i32 99, ; 200
	i32 114, ; 201
	i32 133, ; 202
	i32 131, ; 203
	i32 61, ; 204
	i32 63, ; 205
	i32 1, ; 206
	i32 21, ; 207
	i32 53, ; 208
	i32 54, ; 209
	i32 136, ; 210
	i32 84, ; 211
	i32 27, ; 212
	i32 56, ; 213
	i32 148, ; 214
	i32 66, ; 215
	i32 84, ; 216
	i32 55, ; 217
	i32 127, ; 218
	i32 150, ; 219
	i32 45, ; 220
	i32 85, ; 221
	i32 122, ; 222
	i32 148, ; 223
	i32 97, ; 224
	i32 135, ; 225
	i32 70, ; 226
	i32 34, ; 227
	i32 7, ; 228
	i32 77, ; 229
	i32 152, ; 230
	i32 95, ; 231
	i32 133, ; 232
	i32 106, ; 233
	i32 103, ; 234
	i32 78, ; 235
	i32 143, ; 236
	i32 64, ; 237
	i32 94, ; 238
	i32 138, ; 239
	i32 7, ; 240
	i32 120, ; 241
	i32 69, ; 242
	i32 79, ; 243
	i32 24, ; 244
	i32 139, ; 245
	i32 67, ; 246
	i32 151, ; 247
	i32 81, ; 248
	i32 3, ; 249
	i32 42, ; 250
	i32 22, ; 251
	i32 96, ; 252
	i32 153, ; 253
	i32 23, ; 254
	i32 139, ; 255
	i32 145, ; 256
	i32 31, ; 257
	i32 33, ; 258
	i32 116, ; 259
	i32 110, ; 260
	i32 73, ; 261
	i32 28, ; 262
	i32 78, ; 263
	i32 39, ; 264
	i32 153, ; 265
	i32 58, ; 266
	i32 41, ; 267
	i32 77, ; 268
	i32 101, ; 269
	i32 3, ; 270
	i32 40, ; 271
	i32 65, ; 272
	i32 91, ; 273
	i32 92, ; 274
	i32 60, ; 275
	i32 134, ; 276
	i32 43, ; 277
	i32 130, ; 278
	i32 90, ; 279
	i32 67, ; 280
	i32 19, ; 281
	i32 146, ; 282
	i32 80, ; 283
	i32 59, ; 284
	i32 136, ; 285
	i32 62, ; 286
	i32 57, ; 287
	i32 102, ; 288
	i32 117, ; 289
	i32 53, ; 290
	i32 125, ; 291
	i32 143, ; 292
	i32 5, ; 293
	i32 55, ; 294
	i32 105, ; 295
	i32 124, ; 296
	i32 29, ; 297
	i32 42, ; 298
	i32 111, ; 299
	i32 29, ; 300
	i32 111, ; 301
	i32 75, ; 302
	i32 101, ; 303
	i32 18, ; 304
	i32 52, ; 305
	i32 131, ; 306
	i32 75 ; 307
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
