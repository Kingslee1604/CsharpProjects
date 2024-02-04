; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [312 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [618 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 232
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 266
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 274
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 283
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 307
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 190
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 15: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 291
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 250
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 250
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 270
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 306
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 299
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 206
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 252
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 204
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 226
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 38: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 209
	i32 276479776, ; 39: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 228
	i32 280482487, ; 41: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 225
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 304
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 195
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 47: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 282
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 227
	i32 360082299, ; 49: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 50: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 51: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 52: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 53: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 54: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 55: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 56: _Microsoft.Android.Resource.Designer => 0x17969339 => 308
	i32 403441872, ; 57: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 58: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 302
	i32 441335492, ; 59: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 210
	i32 442565967, ; 60: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 61: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 223
	i32 451504562, ; 62: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 63: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 64: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 65: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 66: System.dll => 0x1bff388e => 164
	i32 476646585, ; 67: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 225
	i32 486930444, ; 68: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 238
	i32 489220957, ; 69: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 280
	i32 498788369, ; 70: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 71: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 184
	i32 526420162, ; 72: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 73: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 270
	i32 530272170, ; 74: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 75: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 301
	i32 539058512, ; 76: Microsoft.Extensions.Logging => 0x20216150 => 180
	i32 540030774, ; 77: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 78: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 79: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 80: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 81: Jsr305Binding => 0x213954e7 => 263
	i32 569601784, ; 82: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 261
	i32 577335427, ; 83: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 597488923, ; 84: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 85: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 86: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 87: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 88: Xamarin.AndroidX.CustomView => 0x2568904f => 215
	i32 627931235, ; 89: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 293
	i32 639843206, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 221
	i32 643868501, ; 91: System.Net => 0x2660a755 => 81
	i32 662205335, ; 92: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 93: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 257
	i32 666292255, ; 94: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 202
	i32 672442732, ; 95: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 96: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 97: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 98: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 272
	i32 693804605, ; 99: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 100: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 101: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 267
	i32 700358131, ; 102: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 103: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 271
	i32 722857257, ; 104: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 105: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 106: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 107: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 192
	i32 759454413, ; 108: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 109: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 110: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 111: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 299
	i32 789151979, ; 112: Microsoft.Extensions.Options => 0x2f0980eb => 183
	i32 790371945, ; 113: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 216
	i32 804715423, ; 114: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 115: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 230
	i32 823281589, ; 116: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 117: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 118: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 119: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 120: Xamarin.AndroidX.Print => 0x3246f6cd => 243
	i32 869139383, ; 121: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 284
	i32 873119928, ; 122: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 123: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 124: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 125: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 298
	i32 904024072, ; 126: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 127: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 914719114, ; 128: TestPro.dll => 0x3685818a => 0
	i32 918734561, ; 129: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 295
	i32 928116545, ; 130: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 266
	i32 952186615, ; 131: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 132: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 271
	i32 961460050, ; 133: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 288
	i32 966729478, ; 134: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 264
	i32 967690846, ; 135: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 227
	i32 975236339, ; 136: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 137: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 138: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 139: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 140: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 297
	i32 992768348, ; 141: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 142: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 143: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 144: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 247
	i32 1019214401, ; 145: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 146: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 179
	i32 1031528504, ; 147: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 265
	i32 1035644815, ; 148: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 200
	i32 1036536393, ; 149: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 150: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 278
	i32 1044663988, ; 151: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 234
	i32 1067306892, ; 153: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 154: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 155: Xamarin.Kotlin.StdLib => 0x409e66d8 => 268
	i32 1098259244, ; 156: System => 0x41761b2c => 164
	i32 1108272742, ; 157: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 300
	i32 1117529484, ; 158: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 294
	i32 1118262833, ; 159: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 290
	i32 1121599056, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 233
	i32 1127624469, ; 161: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 182
	i32 1149092582, ; 162: Xamarin.AndroidX.Window => 0x447dc2e6 => 260
	i32 1168523401, ; 163: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 296
	i32 1170634674, ; 164: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 165: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 256
	i32 1178241025, ; 166: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 241
	i32 1204270330, ; 167: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 202
	i32 1208641965, ; 168: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 169: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 170: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 261
	i32 1253011324, ; 171: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 172: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 276
	i32 1264511973, ; 173: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 251
	i32 1267360935, ; 174: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 255
	i32 1273260888, ; 175: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 207
	i32 1275534314, ; 176: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 272
	i32 1278448581, ; 177: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 199
	i32 1293217323, ; 178: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 218
	i32 1299727211, ; 179: TestPro => 0x4d78436b => 0
	i32 1308624726, ; 180: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 285
	i32 1309188875, ; 181: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 182: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 260
	i32 1324164729, ; 183: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 184: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 185: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 305
	i32 1364015309, ; 186: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 187: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 306
	i32 1376866003, ; 188: Xamarin.AndroidX.SavedState => 0x52114ed3 => 247
	i32 1379779777, ; 189: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 190: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 191: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 211
	i32 1408764838, ; 192: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 193: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 194: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 195: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 274
	i32 1434145427, ; 196: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 197: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 264
	i32 1439761251, ; 198: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 199: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 200: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 201: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 202: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 203: es\Microsoft.Maui.Controls.resources => 0x57152abe => 280
	i32 1461234159, ; 204: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 205: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 206: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 207: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 201
	i32 1470490898, ; 208: Microsoft.Extensions.Primitives => 0x57a5e912 => 184
	i32 1479771757, ; 209: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 210: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 211: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 212: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 248
	i32 1526286932, ; 213: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 304
	i32 1536373174, ; 214: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 215: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 216: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 217: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 218: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 219: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 220: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 221: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 222: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 217
	i32 1592978981, ; 223: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 224: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 265
	i32 1601112923, ; 225: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 226: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 227: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 228: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 237
	i32 1622358360, ; 229: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 230: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 259
	i32 1634654947, ; 231: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 232: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 221
	i32 1636350590, ; 233: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 214
	i32 1639515021, ; 234: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 235: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 236: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 237: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 238: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 253
	i32 1658251792, ; 239: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 262
	i32 1670060433, ; 240: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 209
	i32 1675553242, ; 241: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 242: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 243: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 244: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 245: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 246: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 247: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 269
	i32 1701541528, ; 248: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 249: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 230
	i32 1726116996, ; 250: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 251: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 252: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 205
	i32 1743415430, ; 253: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 275
	i32 1744735666, ; 254: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 255: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 256: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 257: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 258: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 259: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 260: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 252
	i32 1770582343, ; 261: Microsoft.Extensions.Logging.dll => 0x6988f147 => 180
	i32 1776026572, ; 262: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 263: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 264: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 265: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 291
	i32 1788241197, ; 266: Xamarin.AndroidX.Fragment => 0x6a96652d => 223
	i32 1793755602, ; 267: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 283
	i32 1808609942, ; 268: Xamarin.AndroidX.Loader => 0x6bcd3296 => 237
	i32 1813058853, ; 269: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 268
	i32 1813201214, ; 270: Xamarin.Google.Android.Material => 0x6c13413e => 262
	i32 1818569960, ; 271: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 242
	i32 1818787751, ; 272: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 273: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 274: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 275: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 181
	i32 1847515442, ; 276: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 192
	i32 1853025655, ; 277: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 300
	i32 1858542181, ; 278: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 279: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 280: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 282
	i32 1879696579, ; 281: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 282: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 203
	i32 1888955245, ; 283: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 284: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 285: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 276
	i32 1898237753, ; 286: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 287: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 288: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 289: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 290: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 287
	i32 1956758971, ; 291: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 292: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 249
	i32 1968388702, ; 293: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 176
	i32 1983156543, ; 294: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 269
	i32 1985761444, ; 295: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 194
	i32 2003115576, ; 296: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 279
	i32 2011961780, ; 297: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 298: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 234
	i32 2031763787, ; 299: Xamarin.Android.Glide => 0x791a414b => 191
	i32 2045470958, ; 300: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 301: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 229
	i32 2060060697, ; 302: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 303: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 278
	i32 2070888862, ; 304: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 305: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 306: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 307: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 308: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 309: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 310: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 311: Microsoft.Maui => 0x80bd55ad => 188
	i32 2169148018, ; 312: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 286
	i32 2181898931, ; 313: Microsoft.Extensions.Options.dll => 0x820d22b3 => 183
	i32 2192057212, ; 314: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 181
	i32 2193016926, ; 315: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 316: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 273
	i32 2201231467, ; 317: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 318: it\Microsoft.Maui.Controls.resources => 0x839595db => 288
	i32 2217644978, ; 319: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 256
	i32 2222056684, ; 320: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 321: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 238
	i32 2252106437, ; 322: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 323: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 324: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 325: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 177
	i32 2267999099, ; 326: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 193
	i32 2279755925, ; 327: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 245
	i32 2293034957, ; 328: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 329: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 330: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 331: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 292
	i32 2305521784, ; 332: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 333: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 197
	i32 2320631194, ; 334: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 335: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 336: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 337: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 338: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 286
	i32 2368005991, ; 339: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 340: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 176
	i32 2378619854, ; 341: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 342: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 343: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 287
	i32 2401565422, ; 344: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 345: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 220
	i32 2421380589, ; 346: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 347: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 207
	i32 2427813419, ; 348: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 284
	i32 2435356389, ; 349: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 350: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 351: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 352: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 353: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 354: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 210
	i32 2471841756, ; 355: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 356: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 357: Microsoft.Maui.Controls => 0x93dba8a1 => 186
	i32 2483903535, ; 358: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 359: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 360: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 361: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 362: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 290
	i32 2505896520, ; 363: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 232
	i32 2522472828, ; 364: Xamarin.Android.Glide.dll => 0x9659e17c => 191
	i32 2538310050, ; 365: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 366: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 285
	i32 2562349572, ; 367: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 368: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 369: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 289
	i32 2581783588, ; 370: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 233
	i32 2581819634, ; 371: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 255
	i32 2585220780, ; 372: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 373: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 374: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 375: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 294
	i32 2605712449, ; 376: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 273
	i32 2615233544, ; 377: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 224
	i32 2616218305, ; 378: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 182
	i32 2617129537, ; 379: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 380: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 381: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 214
	i32 2624644809, ; 382: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 219
	i32 2626831493, ; 383: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 289
	i32 2627185994, ; 384: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 385: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 386: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 228
	i32 2663391936, ; 387: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 193
	i32 2663698177, ; 388: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 389: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 390: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 391: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 392: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 393: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 394: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 253
	i32 2715334215, ; 395: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 396: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 397: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 398: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 399: Xamarin.AndroidX.Activity => 0xa2e0939b => 195
	i32 2735172069, ; 400: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 401: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 201
	i32 2740698338, ; 402: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 275
	i32 2740948882, ; 403: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 404: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 405: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 295
	i32 2758225723, ; 406: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 187
	i32 2764765095, ; 407: Microsoft.Maui.dll => 0xa4caf7a7 => 188
	i32 2765824710, ; 408: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 409: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 267
	i32 2778768386, ; 410: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 258
	i32 2779977773, ; 411: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 246
	i32 2785988530, ; 412: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 301
	i32 2788224221, ; 413: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 224
	i32 2801831435, ; 414: Microsoft.Maui.Graphics => 0xa7008e0b => 190
	i32 2803228030, ; 415: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 416: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 211
	i32 2819470561, ; 417: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 418: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 419: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 246
	i32 2824502124, ; 420: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 421: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 235
	i32 2849599387, ; 422: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 423: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 258
	i32 2855708567, ; 424: Xamarin.AndroidX.Transition => 0xaa36a797 => 254
	i32 2861098320, ; 425: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 426: Microsoft.Maui.Essentials => 0xaa8a4878 => 189
	i32 2868488919, ; 427: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 428: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 196
	i32 2875164099, ; 429: Jsr305Binding.dll => 0xab5f85c3 => 263
	i32 2875220617, ; 430: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 431: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 222
	i32 2887636118, ; 432: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 433: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 434: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 435: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 436: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 437: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 438: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 259
	i32 2919462931, ; 439: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 440: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 198
	i32 2936416060, ; 441: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 442: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 443: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 444: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 445: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 446: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 447: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 218
	i32 2987532451, ; 448: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 249
	i32 2996846495, ; 449: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 231
	i32 3016983068, ; 450: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 251
	i32 3023353419, ; 451: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 452: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 226
	i32 3038032645, ; 453: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 308
	i32 3053864966, ; 454: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 281
	i32 3056245963, ; 455: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 248
	i32 3057625584, ; 456: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 239
	i32 3059408633, ; 457: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 458: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 459: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 460: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 461: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 462: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 463: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 464: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 465: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 466: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 467: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 468: GoogleGson.dll => 0xbba64c02 => 175
	i32 3159123045, ; 469: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 470: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 471: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 240
	i32 3192346100, ; 472: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 473: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 474: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 475: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 476: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 217
	i32 3220365878, ; 477: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 478: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 479: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 480: Xamarin.AndroidX.CardView => 0xc235e84d => 205
	i32 3265493905, ; 481: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 482: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 483: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 484: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 485: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 486: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 487: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 488: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 489: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 281
	i32 3316684772, ; 490: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 491: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 215
	i32 3317144872, ; 492: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 493: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 203
	i32 3345895724, ; 494: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 244
	i32 3346324047, ; 495: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 241
	i32 3357674450, ; 496: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 298
	i32 3358260929, ; 497: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 498: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 196
	i32 3362522851, ; 499: Xamarin.AndroidX.Core => 0xc86c06e3 => 212
	i32 3366347497, ; 500: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 501: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 245
	i32 3381016424, ; 502: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 277
	i32 3395150330, ; 503: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 504: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 505: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 216
	i32 3428513518, ; 506: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 178
	i32 3429136800, ; 507: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 508: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 509: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 219
	i32 3445260447, ; 510: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 511: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 185
	i32 3458724246, ; 512: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 296
	i32 3471940407, ; 513: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 514: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 515: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 297
	i32 3485117614, ; 516: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 517: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 518: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 208
	i32 3509114376, ; 519: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 520: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 521: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 522: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 523: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 524: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 525: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 305
	i32 3592228221, ; 526: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 307
	i32 3597029428, ; 527: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 194
	i32 3598340787, ; 528: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 529: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 530: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 531: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 243
	i32 3633644679, ; 532: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 198
	i32 3638274909, ; 533: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 534: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 229
	i32 3643446276, ; 535: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 302
	i32 3643854240, ; 536: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 240
	i32 3645089577, ; 537: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 538: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 177
	i32 3660523487, ; 539: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 540: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 541: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 204
	i32 3684561358, ; 542: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 208
	i32 3700866549, ; 543: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 544: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 213
	i32 3716563718, ; 545: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 546: Xamarin.AndroidX.Annotation => 0xdda814c6 => 197
	i32 3724971120, ; 547: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 239
	i32 3732100267, ; 548: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 549: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 550: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 551: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 552: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 277
	i32 3786282454, ; 553: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 206
	i32 3792276235, ; 554: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 555: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 185
	i32 3802395368, ; 556: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 557: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 558: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 559: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 560: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 561: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 179
	i32 3844307129, ; 562: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 563: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 564: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 565: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 566: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 567: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 568: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 254
	i32 3888767677, ; 569: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 244
	i32 3896106733, ; 570: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 571: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 212
	i32 3901907137, ; 572: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 573: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 293
	i32 3920810846, ; 574: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 575: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 257
	i32 3928044579, ; 576: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 577: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 578: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 242
	i32 3945713374, ; 579: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 580: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 581: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 200
	i32 3959773229, ; 582: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 231
	i32 4003436829, ; 583: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 584: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 199
	i32 4025784931, ; 585: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 586: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 187
	i32 4054681211, ; 587: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 588: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 589: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 590: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 279
	i32 4094352644, ; 591: Microsoft.Maui.Essentials.dll => 0xf40add04 => 189
	i32 4099507663, ; 592: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 593: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 594: Xamarin.AndroidX.Emoji2 => 0xf479582c => 220
	i32 4103439459, ; 595: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 303
	i32 4126470640, ; 596: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 178
	i32 4127667938, ; 597: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 598: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 599: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 600: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 303
	i32 4151237749, ; 601: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 602: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 603: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 604: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 605: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 606: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 236
	i32 4185676441, ; 607: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 608: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 609: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 610: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 292
	i32 4256097574, ; 611: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 213
	i32 4258378803, ; 612: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 235
	i32 4260525087, ; 613: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 614: Microsoft.Maui.Controls.dll => 0xfea12dee => 186
	i32 4274976490, ; 615: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 616: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 236
	i32 4294763496 ; 617: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 222
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [618 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 232, ; 3
	i32 266, ; 4
	i32 48, ; 5
	i32 274, ; 6
	i32 80, ; 7
	i32 283, ; 8
	i32 145, ; 9
	i32 30, ; 10
	i32 307, ; 11
	i32 124, ; 12
	i32 190, ; 13
	i32 102, ; 14
	i32 291, ; 15
	i32 250, ; 16
	i32 107, ; 17
	i32 250, ; 18
	i32 139, ; 19
	i32 270, ; 20
	i32 306, ; 21
	i32 299, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 206, ; 26
	i32 132, ; 27
	i32 252, ; 28
	i32 151, ; 29
	i32 18, ; 30
	i32 204, ; 31
	i32 26, ; 32
	i32 226, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 209, ; 38
	i32 147, ; 39
	i32 228, ; 40
	i32 225, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 304, ; 44
	i32 195, ; 45
	i32 83, ; 46
	i32 282, ; 47
	i32 227, ; 48
	i32 131, ; 49
	i32 55, ; 50
	i32 149, ; 51
	i32 74, ; 52
	i32 145, ; 53
	i32 62, ; 54
	i32 146, ; 55
	i32 308, ; 56
	i32 165, ; 57
	i32 302, ; 58
	i32 210, ; 59
	i32 12, ; 60
	i32 223, ; 61
	i32 125, ; 62
	i32 152, ; 63
	i32 113, ; 64
	i32 166, ; 65
	i32 164, ; 66
	i32 225, ; 67
	i32 238, ; 68
	i32 280, ; 69
	i32 84, ; 70
	i32 184, ; 71
	i32 150, ; 72
	i32 270, ; 73
	i32 60, ; 74
	i32 301, ; 75
	i32 180, ; 76
	i32 51, ; 77
	i32 103, ; 78
	i32 114, ; 79
	i32 40, ; 80
	i32 263, ; 81
	i32 261, ; 82
	i32 120, ; 83
	i32 173, ; 84
	i32 52, ; 85
	i32 44, ; 86
	i32 119, ; 87
	i32 215, ; 88
	i32 293, ; 89
	i32 221, ; 90
	i32 81, ; 91
	i32 136, ; 92
	i32 257, ; 93
	i32 202, ; 94
	i32 8, ; 95
	i32 73, ; 96
	i32 155, ; 97
	i32 272, ; 98
	i32 154, ; 99
	i32 92, ; 100
	i32 267, ; 101
	i32 45, ; 102
	i32 271, ; 103
	i32 109, ; 104
	i32 129, ; 105
	i32 25, ; 106
	i32 192, ; 107
	i32 72, ; 108
	i32 55, ; 109
	i32 46, ; 110
	i32 299, ; 111
	i32 183, ; 112
	i32 216, ; 113
	i32 22, ; 114
	i32 230, ; 115
	i32 86, ; 116
	i32 43, ; 117
	i32 160, ; 118
	i32 71, ; 119
	i32 243, ; 120
	i32 284, ; 121
	i32 3, ; 122
	i32 42, ; 123
	i32 63, ; 124
	i32 298, ; 125
	i32 16, ; 126
	i32 53, ; 127
	i32 0, ; 128
	i32 295, ; 129
	i32 266, ; 130
	i32 105, ; 131
	i32 271, ; 132
	i32 288, ; 133
	i32 264, ; 134
	i32 227, ; 135
	i32 34, ; 136
	i32 158, ; 137
	i32 85, ; 138
	i32 32, ; 139
	i32 297, ; 140
	i32 12, ; 141
	i32 51, ; 142
	i32 56, ; 143
	i32 247, ; 144
	i32 36, ; 145
	i32 179, ; 146
	i32 265, ; 147
	i32 200, ; 148
	i32 35, ; 149
	i32 278, ; 150
	i32 58, ; 151
	i32 234, ; 152
	i32 175, ; 153
	i32 17, ; 154
	i32 268, ; 155
	i32 164, ; 156
	i32 300, ; 157
	i32 294, ; 158
	i32 290, ; 159
	i32 233, ; 160
	i32 182, ; 161
	i32 260, ; 162
	i32 296, ; 163
	i32 153, ; 164
	i32 256, ; 165
	i32 241, ; 166
	i32 202, ; 167
	i32 29, ; 168
	i32 52, ; 169
	i32 261, ; 170
	i32 5, ; 171
	i32 276, ; 172
	i32 251, ; 173
	i32 255, ; 174
	i32 207, ; 175
	i32 272, ; 176
	i32 199, ; 177
	i32 218, ; 178
	i32 0, ; 179
	i32 285, ; 180
	i32 85, ; 181
	i32 260, ; 182
	i32 61, ; 183
	i32 112, ; 184
	i32 305, ; 185
	i32 57, ; 186
	i32 306, ; 187
	i32 247, ; 188
	i32 99, ; 189
	i32 19, ; 190
	i32 211, ; 191
	i32 111, ; 192
	i32 101, ; 193
	i32 102, ; 194
	i32 274, ; 195
	i32 104, ; 196
	i32 264, ; 197
	i32 71, ; 198
	i32 38, ; 199
	i32 32, ; 200
	i32 103, ; 201
	i32 73, ; 202
	i32 280, ; 203
	i32 9, ; 204
	i32 123, ; 205
	i32 46, ; 206
	i32 201, ; 207
	i32 184, ; 208
	i32 9, ; 209
	i32 43, ; 210
	i32 4, ; 211
	i32 248, ; 212
	i32 304, ; 213
	i32 31, ; 214
	i32 138, ; 215
	i32 92, ; 216
	i32 93, ; 217
	i32 49, ; 218
	i32 141, ; 219
	i32 112, ; 220
	i32 140, ; 221
	i32 217, ; 222
	i32 115, ; 223
	i32 265, ; 224
	i32 157, ; 225
	i32 76, ; 226
	i32 79, ; 227
	i32 237, ; 228
	i32 37, ; 229
	i32 259, ; 230
	i32 174, ; 231
	i32 221, ; 232
	i32 214, ; 233
	i32 64, ; 234
	i32 138, ; 235
	i32 15, ; 236
	i32 116, ; 237
	i32 253, ; 238
	i32 262, ; 239
	i32 209, ; 240
	i32 48, ; 241
	i32 70, ; 242
	i32 80, ; 243
	i32 126, ; 244
	i32 94, ; 245
	i32 121, ; 246
	i32 269, ; 247
	i32 26, ; 248
	i32 230, ; 249
	i32 97, ; 250
	i32 28, ; 251
	i32 205, ; 252
	i32 275, ; 253
	i32 149, ; 254
	i32 169, ; 255
	i32 4, ; 256
	i32 98, ; 257
	i32 33, ; 258
	i32 93, ; 259
	i32 252, ; 260
	i32 180, ; 261
	i32 21, ; 262
	i32 41, ; 263
	i32 170, ; 264
	i32 291, ; 265
	i32 223, ; 266
	i32 283, ; 267
	i32 237, ; 268
	i32 268, ; 269
	i32 262, ; 270
	i32 242, ; 271
	i32 2, ; 272
	i32 134, ; 273
	i32 111, ; 274
	i32 181, ; 275
	i32 192, ; 276
	i32 300, ; 277
	i32 58, ; 278
	i32 95, ; 279
	i32 282, ; 280
	i32 39, ; 281
	i32 203, ; 282
	i32 25, ; 283
	i32 94, ; 284
	i32 276, ; 285
	i32 89, ; 286
	i32 99, ; 287
	i32 10, ; 288
	i32 87, ; 289
	i32 287, ; 290
	i32 100, ; 291
	i32 249, ; 292
	i32 176, ; 293
	i32 269, ; 294
	i32 194, ; 295
	i32 279, ; 296
	i32 7, ; 297
	i32 234, ; 298
	i32 191, ; 299
	i32 88, ; 300
	i32 229, ; 301
	i32 154, ; 302
	i32 278, ; 303
	i32 33, ; 304
	i32 116, ; 305
	i32 82, ; 306
	i32 20, ; 307
	i32 11, ; 308
	i32 162, ; 309
	i32 3, ; 310
	i32 188, ; 311
	i32 286, ; 312
	i32 183, ; 313
	i32 181, ; 314
	i32 84, ; 315
	i32 273, ; 316
	i32 64, ; 317
	i32 288, ; 318
	i32 256, ; 319
	i32 143, ; 320
	i32 238, ; 321
	i32 157, ; 322
	i32 41, ; 323
	i32 117, ; 324
	i32 177, ; 325
	i32 193, ; 326
	i32 245, ; 327
	i32 131, ; 328
	i32 75, ; 329
	i32 66, ; 330
	i32 292, ; 331
	i32 172, ; 332
	i32 197, ; 333
	i32 143, ; 334
	i32 106, ; 335
	i32 151, ; 336
	i32 70, ; 337
	i32 286, ; 338
	i32 156, ; 339
	i32 176, ; 340
	i32 121, ; 341
	i32 127, ; 342
	i32 287, ; 343
	i32 152, ; 344
	i32 220, ; 345
	i32 141, ; 346
	i32 207, ; 347
	i32 284, ; 348
	i32 20, ; 349
	i32 14, ; 350
	i32 135, ; 351
	i32 75, ; 352
	i32 59, ; 353
	i32 210, ; 354
	i32 167, ; 355
	i32 168, ; 356
	i32 186, ; 357
	i32 15, ; 358
	i32 74, ; 359
	i32 6, ; 360
	i32 23, ; 361
	i32 290, ; 362
	i32 232, ; 363
	i32 191, ; 364
	i32 91, ; 365
	i32 285, ; 366
	i32 1, ; 367
	i32 136, ; 368
	i32 289, ; 369
	i32 233, ; 370
	i32 255, ; 371
	i32 134, ; 372
	i32 69, ; 373
	i32 146, ; 374
	i32 294, ; 375
	i32 273, ; 376
	i32 224, ; 377
	i32 182, ; 378
	i32 88, ; 379
	i32 96, ; 380
	i32 214, ; 381
	i32 219, ; 382
	i32 289, ; 383
	i32 31, ; 384
	i32 45, ; 385
	i32 228, ; 386
	i32 193, ; 387
	i32 109, ; 388
	i32 158, ; 389
	i32 35, ; 390
	i32 22, ; 391
	i32 114, ; 392
	i32 57, ; 393
	i32 253, ; 394
	i32 144, ; 395
	i32 118, ; 396
	i32 120, ; 397
	i32 110, ; 398
	i32 195, ; 399
	i32 139, ; 400
	i32 201, ; 401
	i32 275, ; 402
	i32 54, ; 403
	i32 105, ; 404
	i32 295, ; 405
	i32 187, ; 406
	i32 188, ; 407
	i32 133, ; 408
	i32 267, ; 409
	i32 258, ; 410
	i32 246, ; 411
	i32 301, ; 412
	i32 224, ; 413
	i32 190, ; 414
	i32 159, ; 415
	i32 211, ; 416
	i32 163, ; 417
	i32 132, ; 418
	i32 246, ; 419
	i32 161, ; 420
	i32 235, ; 421
	i32 140, ; 422
	i32 258, ; 423
	i32 254, ; 424
	i32 169, ; 425
	i32 189, ; 426
	i32 174, ; 427
	i32 196, ; 428
	i32 263, ; 429
	i32 40, ; 430
	i32 222, ; 431
	i32 81, ; 432
	i32 56, ; 433
	i32 37, ; 434
	i32 97, ; 435
	i32 166, ; 436
	i32 172, ; 437
	i32 259, ; 438
	i32 82, ; 439
	i32 198, ; 440
	i32 98, ; 441
	i32 30, ; 442
	i32 159, ; 443
	i32 18, ; 444
	i32 127, ; 445
	i32 119, ; 446
	i32 218, ; 447
	i32 249, ; 448
	i32 231, ; 449
	i32 251, ; 450
	i32 165, ; 451
	i32 226, ; 452
	i32 308, ; 453
	i32 281, ; 454
	i32 248, ; 455
	i32 239, ; 456
	i32 170, ; 457
	i32 16, ; 458
	i32 144, ; 459
	i32 125, ; 460
	i32 118, ; 461
	i32 38, ; 462
	i32 115, ; 463
	i32 47, ; 464
	i32 142, ; 465
	i32 117, ; 466
	i32 34, ; 467
	i32 175, ; 468
	i32 95, ; 469
	i32 53, ; 470
	i32 240, ; 471
	i32 129, ; 472
	i32 153, ; 473
	i32 24, ; 474
	i32 161, ; 475
	i32 217, ; 476
	i32 148, ; 477
	i32 104, ; 478
	i32 89, ; 479
	i32 205, ; 480
	i32 60, ; 481
	i32 142, ; 482
	i32 100, ; 483
	i32 5, ; 484
	i32 13, ; 485
	i32 122, ; 486
	i32 135, ; 487
	i32 28, ; 488
	i32 281, ; 489
	i32 72, ; 490
	i32 215, ; 491
	i32 24, ; 492
	i32 203, ; 493
	i32 244, ; 494
	i32 241, ; 495
	i32 298, ; 496
	i32 137, ; 497
	i32 196, ; 498
	i32 212, ; 499
	i32 168, ; 500
	i32 245, ; 501
	i32 277, ; 502
	i32 101, ; 503
	i32 123, ; 504
	i32 216, ; 505
	i32 178, ; 506
	i32 163, ; 507
	i32 167, ; 508
	i32 219, ; 509
	i32 39, ; 510
	i32 185, ; 511
	i32 296, ; 512
	i32 17, ; 513
	i32 171, ; 514
	i32 297, ; 515
	i32 137, ; 516
	i32 150, ; 517
	i32 208, ; 518
	i32 155, ; 519
	i32 130, ; 520
	i32 19, ; 521
	i32 65, ; 522
	i32 147, ; 523
	i32 47, ; 524
	i32 305, ; 525
	i32 307, ; 526
	i32 194, ; 527
	i32 79, ; 528
	i32 61, ; 529
	i32 106, ; 530
	i32 243, ; 531
	i32 198, ; 532
	i32 49, ; 533
	i32 229, ; 534
	i32 302, ; 535
	i32 240, ; 536
	i32 14, ; 537
	i32 177, ; 538
	i32 68, ; 539
	i32 171, ; 540
	i32 204, ; 541
	i32 208, ; 542
	i32 78, ; 543
	i32 213, ; 544
	i32 108, ; 545
	i32 197, ; 546
	i32 239, ; 547
	i32 67, ; 548
	i32 63, ; 549
	i32 27, ; 550
	i32 160, ; 551
	i32 277, ; 552
	i32 206, ; 553
	i32 10, ; 554
	i32 185, ; 555
	i32 11, ; 556
	i32 173, ; 557
	i32 78, ; 558
	i32 126, ; 559
	i32 83, ; 560
	i32 179, ; 561
	i32 66, ; 562
	i32 107, ; 563
	i32 65, ; 564
	i32 128, ; 565
	i32 122, ; 566
	i32 77, ; 567
	i32 254, ; 568
	i32 244, ; 569
	i32 8, ; 570
	i32 212, ; 571
	i32 2, ; 572
	i32 293, ; 573
	i32 44, ; 574
	i32 257, ; 575
	i32 156, ; 576
	i32 128, ; 577
	i32 242, ; 578
	i32 23, ; 579
	i32 133, ; 580
	i32 200, ; 581
	i32 231, ; 582
	i32 29, ; 583
	i32 199, ; 584
	i32 62, ; 585
	i32 187, ; 586
	i32 90, ; 587
	i32 87, ; 588
	i32 148, ; 589
	i32 279, ; 590
	i32 189, ; 591
	i32 36, ; 592
	i32 86, ; 593
	i32 220, ; 594
	i32 303, ; 595
	i32 178, ; 596
	i32 50, ; 597
	i32 6, ; 598
	i32 90, ; 599
	i32 303, ; 600
	i32 21, ; 601
	i32 162, ; 602
	i32 96, ; 603
	i32 50, ; 604
	i32 113, ; 605
	i32 236, ; 606
	i32 130, ; 607
	i32 76, ; 608
	i32 27, ; 609
	i32 292, ; 610
	i32 213, ; 611
	i32 235, ; 612
	i32 7, ; 613
	i32 186, ; 614
	i32 110, ; 615
	i32 236, ; 616
	i32 222 ; 617
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}