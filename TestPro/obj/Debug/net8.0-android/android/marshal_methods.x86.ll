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

@assembly_image_cache = dso_local local_unnamed_addr global [324 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [642 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 244
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 278
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 286
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 8: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 295
	i32 42639949, ; 9: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 10: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 198
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 319
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 197
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 303
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 262
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 262
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 123514077, ; 21: EPPlus.dll => 0x75cacdd => 173
	i32 134690465, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 282
	i32 136584136, ; 23: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 318
	i32 140062828, ; 24: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 311
	i32 142721839, ; 25: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 26: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 27: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 28: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 218
	i32 176265551, ; 29: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 30: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 264
	i32 184328833, ; 31: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 32: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 33: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 216
	i32 216908349, ; 34: OfficeOpenXml.Core.ExcelPackage => 0xcedc23d => 199
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 36: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 238
	i32 230752869, ; 37: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 38: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 39: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 40: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 221
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 240
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 237
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 316
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 207
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 50: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 294
	i32 342366114, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 239
	i32 360082299, ; 52: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 53: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 54: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 55: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 56: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 57: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 58: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 59: _Microsoft.Android.Resource.Designer => 0x17969339 => 320
	i32 403441872, ; 60: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 61: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 314
	i32 441335492, ; 62: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 222
	i32 442565967, ; 63: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 64: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 235
	i32 451504562, ; 65: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 66: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 67: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 68: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 69: System.dll => 0x1bff388e => 164
	i32 476646585, ; 70: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 237
	i32 486930444, ; 71: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 250
	i32 489220957, ; 72: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 292
	i32 498788369, ; 73: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 190
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 282
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 78: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 313
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 186
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 275
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 273
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 90: Xamarin.AndroidX.CustomView => 0x2568904f => 227
	i32 627931235, ; 91: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 305
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 233
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 269
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 214
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 99: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 100: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 284
	i32 693804605, ; 101: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 102: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 103: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 279
	i32 700358131, ; 104: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 709152836, ; 105: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 202
	i32 720511267, ; 106: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 283
	i32 722857257, ; 107: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 108: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 109: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 110: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 204
	i32 759454413, ; 111: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 112: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 113: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 114: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 311
	i32 789151979, ; 115: Microsoft.Extensions.Options => 0x2f0980eb => 189
	i32 790371945, ; 116: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 228
	i32 794464650, ; 117: EPPlus.Interfaces => 0x2f5a918a => 174
	i32 804715423, ; 118: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 119: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 242
	i32 809851609, ; 120: System.Drawing.Common.dll => 0x30455ad9 => 200
	i32 823281589, ; 121: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 122: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 123: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 124: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 125: Xamarin.AndroidX.Print => 0x3246f6cd => 255
	i32 869139383, ; 126: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 296
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 130: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 310
	i32 904024072, ; 131: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 132: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 914719114, ; 133: TestPro.dll => 0x3685818a => 0
	i32 918734561, ; 134: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 307
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 278
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 283
	i32 961460050, ; 138: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 300
	i32 966729478, ; 139: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 276
	i32 967690846, ; 140: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 239
	i32 975236339, ; 141: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 142: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 143: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 144: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 145: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 309
	i32 992768348, ; 146: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 147: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 148: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 185
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 150: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 259
	i32 1019214401, ; 151: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 152: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 182
	i32 1031528504, ; 153: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 277
	i32 1035644815, ; 154: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 212
	i32 1036536393, ; 155: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 156: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 290
	i32 1044663988, ; 157: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 158: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 246
	i32 1067306892, ; 159: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 160: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083751839, ; 161: System.IO.Packaging => 0x4098bd9f => 201
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 280
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1106973742, ; 164: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 179
	i32 1108272742, ; 165: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 312
	i32 1117529484, ; 166: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 306
	i32 1118262833, ; 167: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 302
	i32 1121599056, ; 168: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 245
	i32 1127624469, ; 169: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 188
	i32 1149092582, ; 170: Xamarin.AndroidX.Window => 0x447dc2e6 => 272
	i32 1168523401, ; 171: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 308
	i32 1170634674, ; 172: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 173: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 183
	i32 1175144683, ; 174: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 268
	i32 1178241025, ; 175: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 253
	i32 1204270330, ; 176: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 214
	i32 1208641965, ; 177: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 179: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 273
	i32 1253011324, ; 180: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 181: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 288
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 263
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 267
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 219
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 284
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 211
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 230
	i32 1299727211, ; 188: TestPro => 0x4d78436b => 0
	i32 1308624726, ; 189: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 297
	i32 1309188875, ; 190: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 191: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 272
	i32 1324164729, ; 192: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 193: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 194: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 317
	i32 1364015309, ; 195: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 196: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 318
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 259
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 199: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 200: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 223
	i32 1408764838, ; 201: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 202: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 203: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 204: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 286
	i32 1434145427, ; 205: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 206: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 276
	i32 1439761251, ; 207: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 208: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 209: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 210: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 211: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 212: es\Microsoft.Maui.Controls.resources => 0x57152abe => 292
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 213
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 190
	i32 1479011226, ; 218: EPPlus => 0x5827eb9a => 173
	i32 1479771757, ; 219: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 221: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 222: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 260
	i32 1521091094, ; 223: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 185
	i32 1526286932, ; 224: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 316
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551954004, ; 229: Microsoft.IO.RecyclableMemoryStream.dll => 0x5c80f054 => 191
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 234: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 229
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 277
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 238: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 239: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 240: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 249
	i32 1622358360, ; 241: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 242: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 271
	i32 1631539578, ; 243: EPPlus.System.Drawing.dll => 0x613f517a => 175
	i32 1632842087, ; 244: Microsoft.Extensions.Configuration.Json => 0x61533167 => 180
	i32 1635184631, ; 245: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 233
	i32 1636350590, ; 246: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 226
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 265
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 274
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 221
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 281
	i32 1701541528, ; 261: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 262: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 242
	i32 1726116996, ; 263: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 264: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 265: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 217
	i32 1743415430, ; 266: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 287
	i32 1744735666, ; 267: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 268: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 269: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 270: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 271: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 272: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 273: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 264
	i32 1770582343, ; 274: Microsoft.Extensions.Logging.dll => 0x6988f147 => 186
	i32 1776026572, ; 275: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 276: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 277: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 278: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 303
	i32 1788241197, ; 279: Xamarin.AndroidX.Fragment => 0x6a96652d => 235
	i32 1793755602, ; 280: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 295
	i32 1808609942, ; 281: Xamarin.AndroidX.Loader => 0x6bcd3296 => 249
	i32 1813058853, ; 282: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 280
	i32 1813201214, ; 283: Xamarin.Google.Android.Material => 0x6c13413e => 274
	i32 1818569960, ; 284: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 254
	i32 1818787751, ; 285: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 286: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 287: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 288: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 187
	i32 1847515442, ; 289: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 204
	i32 1853025655, ; 290: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 312
	i32 1858542181, ; 291: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 292: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 293: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 294
	i32 1879696579, ; 294: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 295: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 215
	i32 1888955245, ; 296: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 297: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 298: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 288
	i32 1898237753, ; 299: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 300: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 301: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 302: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 303: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 299
	i32 1956758971, ; 304: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 305: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 261
	i32 1968388702, ; 306: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 177
	i32 1983156543, ; 307: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 281
	i32 1985761444, ; 308: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 206
	i32 2003115576, ; 309: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 291
	i32 2011961780, ; 310: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 311: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 246
	i32 2031763787, ; 312: Xamarin.Android.Glide => 0x791a414b => 203
	i32 2045470958, ; 313: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 314: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 241
	i32 2060060697, ; 315: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 316: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 290
	i32 2070888862, ; 317: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 318: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 184
	i32 2079903147, ; 319: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 320: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 321: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 322: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143465592, ; 323: Microsoft.IO.RecyclableMemoryStream => 0x7fc2b078 => 191
	i32 2143790110, ; 324: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 325: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 326: Microsoft.Maui => 0x80bd55ad => 195
	i32 2169148018, ; 327: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 298
	i32 2181898931, ; 328: Microsoft.Extensions.Options.dll => 0x820d22b3 => 189
	i32 2192057212, ; 329: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 187
	i32 2193016926, ; 330: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 331: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 285
	i32 2201231467, ; 332: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 333: it\Microsoft.Maui.Controls.resources => 0x839595db => 300
	i32 2217644978, ; 334: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 268
	i32 2222056684, ; 335: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 336: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 250
	i32 2252106437, ; 337: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 338: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 339: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 340: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 178
	i32 2267999099, ; 341: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 205
	i32 2279755925, ; 342: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 257
	i32 2293034957, ; 343: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 344: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 345: System.Net.Mail => 0x88ffe49e => 66
	i32 2298796049, ; 346: EPPlus.System.Drawing => 0x8904d811 => 175
	i32 2303942373, ; 347: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 304
	i32 2305521784, ; 348: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 349: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 209
	i32 2320631194, ; 350: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 351: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 352: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 353: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 354: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 298
	i32 2368005991, ; 355: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 356: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 177
	i32 2378619854, ; 357: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 358: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 359: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 299
	i32 2401565422, ; 360: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 361: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 232
	i32 2421380589, ; 362: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 363: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 219
	i32 2427813419, ; 364: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 296
	i32 2435356389, ; 365: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 366: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 367: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 368: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 369: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 370: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 222
	i32 2471841756, ; 371: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 372: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 373: Microsoft.Maui.Controls => 0x93dba8a1 => 193
	i32 2483903535, ; 374: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 375: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 376: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 377: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 378: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 302
	i32 2505896520, ; 379: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 244
	i32 2522472828, ; 380: Xamarin.Android.Glide.dll => 0x9659e17c => 203
	i32 2538310050, ; 381: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2548432851, ; 382: EPPlus.Interfaces.dll => 0x97e5ffd3 => 174
	i32 2550873716, ; 383: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 297
	i32 2562349572, ; 384: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 385: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 386: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 301
	i32 2581783588, ; 387: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 245
	i32 2581819634, ; 388: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 267
	i32 2585220780, ; 389: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 390: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 391: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 392: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 183
	i32 2593496499, ; 393: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 306
	i32 2605712449, ; 394: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 285
	i32 2615233544, ; 395: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 236
	i32 2616218305, ; 396: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 188
	i32 2617129537, ; 397: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 398: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 399: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 226
	i32 2624644809, ; 400: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 231
	i32 2626831493, ; 401: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 301
	i32 2627185994, ; 402: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 403: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 404: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 240
	i32 2663391936, ; 405: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 205
	i32 2663698177, ; 406: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 407: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 408: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 409: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 410: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 411: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 412: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 265
	i32 2715334215, ; 413: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 414: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 415: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 416: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 417: Xamarin.AndroidX.Activity => 0xa2e0939b => 207
	i32 2735172069, ; 418: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 419: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 213
	i32 2740698338, ; 420: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 287
	i32 2740948882, ; 421: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 422: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 423: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 307
	i32 2758225723, ; 424: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 194
	i32 2764765095, ; 425: Microsoft.Maui.dll => 0xa4caf7a7 => 195
	i32 2765824710, ; 426: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 427: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 279
	i32 2778768386, ; 428: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 270
	i32 2779977773, ; 429: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 258
	i32 2785988530, ; 430: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 313
	i32 2788224221, ; 431: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 236
	i32 2795666278, ; 432: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 198
	i32 2801831435, ; 433: Microsoft.Maui.Graphics => 0xa7008e0b => 197
	i32 2803228030, ; 434: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 435: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 223
	i32 2819470561, ; 436: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 437: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 438: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 258
	i32 2824502124, ; 439: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 440: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 247
	i32 2849599387, ; 441: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 442: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 270
	i32 2855708567, ; 443: Xamarin.AndroidX.Transition => 0xaa36a797 => 266
	i32 2861098320, ; 444: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 445: Microsoft.Maui.Essentials => 0xaa8a4878 => 196
	i32 2870099610, ; 446: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 208
	i32 2875164099, ; 447: Jsr305Binding.dll => 0xab5f85c3 => 275
	i32 2875220617, ; 448: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 449: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 234
	i32 2887636118, ; 450: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 451: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 452: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 453: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 454: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 455: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 456: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 184
	i32 2916838712, ; 457: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 271
	i32 2919462931, ; 458: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 459: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 210
	i32 2936416060, ; 460: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 461: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 462: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 463: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 464: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 465: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 466: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 230
	i32 2987532451, ; 467: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 261
	i32 2996846495, ; 468: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 243
	i32 3016983068, ; 469: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 263
	i32 3023353419, ; 470: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 471: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 238
	i32 3038032645, ; 472: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 320
	i32 3053864966, ; 473: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 293
	i32 3056245963, ; 474: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 260
	i32 3057625584, ; 475: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 251
	i32 3059408633, ; 476: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 477: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 478: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 479: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 480: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 481: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 482: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 483: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 484: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 485: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 486: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 487: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 488: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 489: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 490: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 252
	i32 3192346100, ; 491: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 492: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 493: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 494: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 495: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 229
	i32 3220365878, ; 496: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 497: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 498: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 499: Xamarin.AndroidX.CardView => 0xc235e84d => 217
	i32 3265493905, ; 500: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 501: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 502: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 503: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 504: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 505: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 506: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 507: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 508: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 293
	i32 3316684772, ; 509: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 510: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 227
	i32 3317144872, ; 511: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 512: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 215
	i32 3345895724, ; 513: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 256
	i32 3346324047, ; 514: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 253
	i32 3357674450, ; 515: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 310
	i32 3358260929, ; 516: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 517: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 208
	i32 3362522851, ; 518: Xamarin.AndroidX.Core => 0xc86c06e3 => 224
	i32 3366347497, ; 519: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 520: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 257
	i32 3381016424, ; 521: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 289
	i32 3395150330, ; 522: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 523: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 524: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 228
	i32 3428513518, ; 525: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 181
	i32 3429136800, ; 526: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 527: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 528: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 231
	i32 3445260447, ; 529: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 530: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 192
	i32 3458724246, ; 531: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 308
	i32 3471940407, ; 532: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 533: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 534: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 309
	i32 3485117614, ; 535: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 536: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 537: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 220
	i32 3509114376, ; 538: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 539: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 540: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 541: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 542: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 543: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 544: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 317
	i32 3592228221, ; 545: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 319
	i32 3597029428, ; 546: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 206
	i32 3598340787, ; 547: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 548: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 549: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 550: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 255
	i32 3633644679, ; 551: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 210
	i32 3638274909, ; 552: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 553: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 241
	i32 3643446276, ; 554: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 314
	i32 3643854240, ; 555: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 252
	i32 3645089577, ; 556: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 557: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 178
	i32 3660523487, ; 558: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 559: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 560: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 216
	i32 3684561358, ; 561: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 220
	i32 3689375977, ; 562: System.Drawing.Common => 0xdbe768e9 => 200
	i32 3700866549, ; 563: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 564: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 225
	i32 3716563718, ; 565: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 566: Xamarin.AndroidX.Annotation => 0xdda814c6 => 209
	i32 3722202641, ; 567: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 180
	i32 3724971120, ; 568: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 251
	i32 3732100267, ; 569: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 570: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 571: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 572: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 573: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 289
	i32 3758424670, ; 574: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 179
	i32 3786282454, ; 575: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 218
	i32 3792276235, ; 576: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 577: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 192
	i32 3802395368, ; 578: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 579: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 202
	i32 3819260425, ; 580: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 581: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 582: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 583: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 182
	i32 3844307129, ; 584: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 585: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 586: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 587: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 588: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 589: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 590: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 266
	i32 3888767677, ; 591: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 256
	i32 3896106733, ; 592: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 593: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 224
	i32 3901907137, ; 594: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 595: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 305
	i32 3920810846, ; 596: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 597: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 269
	i32 3928044579, ; 598: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 599: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 600: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 254
	i32 3945713374, ; 601: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3952357212, ; 602: System.IO.Packaging.dll => 0xeb942f5c => 201
	i32 3953953790, ; 603: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 604: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 212
	i32 3959773229, ; 605: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 243
	i32 3995665529, ; 606: OfficeOpenXml.Core.ExcelPackage.dll => 0xee290479 => 199
	i32 4003436829, ; 607: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 608: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 211
	i32 4025784931, ; 609: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 610: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 194
	i32 4054681211, ; 611: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 612: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 613: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 614: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 291
	i32 4094352644, ; 615: Microsoft.Maui.Essentials.dll => 0xf40add04 => 196
	i32 4099507663, ; 616: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 617: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 618: Xamarin.AndroidX.Emoji2 => 0xf479582c => 232
	i32 4103439459, ; 619: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 315
	i32 4126470640, ; 620: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 181
	i32 4127667938, ; 621: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 622: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 623: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 624: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 315
	i32 4151237749, ; 625: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 626: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 627: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 628: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 629: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 630: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 248
	i32 4185676441, ; 631: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 632: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 633: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 634: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 304
	i32 4256097574, ; 635: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 225
	i32 4258378803, ; 636: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 247
	i32 4260525087, ; 637: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 638: Microsoft.Maui.Controls.dll => 0xfea12dee => 193
	i32 4274976490, ; 639: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 640: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 248
	i32 4294763496 ; 641: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 234
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [642 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 244, ; 3
	i32 278, ; 4
	i32 48, ; 5
	i32 286, ; 6
	i32 80, ; 7
	i32 295, ; 8
	i32 145, ; 9
	i32 198, ; 10
	i32 30, ; 11
	i32 319, ; 12
	i32 124, ; 13
	i32 197, ; 14
	i32 102, ; 15
	i32 303, ; 16
	i32 262, ; 17
	i32 107, ; 18
	i32 262, ; 19
	i32 139, ; 20
	i32 173, ; 21
	i32 282, ; 22
	i32 318, ; 23
	i32 311, ; 24
	i32 77, ; 25
	i32 124, ; 26
	i32 13, ; 27
	i32 218, ; 28
	i32 132, ; 29
	i32 264, ; 30
	i32 151, ; 31
	i32 18, ; 32
	i32 216, ; 33
	i32 199, ; 34
	i32 26, ; 35
	i32 238, ; 36
	i32 1, ; 37
	i32 59, ; 38
	i32 42, ; 39
	i32 91, ; 40
	i32 221, ; 41
	i32 147, ; 42
	i32 240, ; 43
	i32 237, ; 44
	i32 54, ; 45
	i32 69, ; 46
	i32 316, ; 47
	i32 207, ; 48
	i32 83, ; 49
	i32 294, ; 50
	i32 239, ; 51
	i32 131, ; 52
	i32 55, ; 53
	i32 149, ; 54
	i32 74, ; 55
	i32 145, ; 56
	i32 62, ; 57
	i32 146, ; 58
	i32 320, ; 59
	i32 165, ; 60
	i32 314, ; 61
	i32 222, ; 62
	i32 12, ; 63
	i32 235, ; 64
	i32 125, ; 65
	i32 152, ; 66
	i32 113, ; 67
	i32 166, ; 68
	i32 164, ; 69
	i32 237, ; 70
	i32 250, ; 71
	i32 292, ; 72
	i32 84, ; 73
	i32 190, ; 74
	i32 150, ; 75
	i32 282, ; 76
	i32 60, ; 77
	i32 313, ; 78
	i32 186, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 275, ; 84
	i32 273, ; 85
	i32 120, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 227, ; 90
	i32 305, ; 91
	i32 233, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 269, ; 95
	i32 214, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 155, ; 99
	i32 284, ; 100
	i32 154, ; 101
	i32 92, ; 102
	i32 279, ; 103
	i32 45, ; 104
	i32 202, ; 105
	i32 283, ; 106
	i32 109, ; 107
	i32 129, ; 108
	i32 25, ; 109
	i32 204, ; 110
	i32 72, ; 111
	i32 55, ; 112
	i32 46, ; 113
	i32 311, ; 114
	i32 189, ; 115
	i32 228, ; 116
	i32 174, ; 117
	i32 22, ; 118
	i32 242, ; 119
	i32 200, ; 120
	i32 86, ; 121
	i32 43, ; 122
	i32 160, ; 123
	i32 71, ; 124
	i32 255, ; 125
	i32 296, ; 126
	i32 3, ; 127
	i32 42, ; 128
	i32 63, ; 129
	i32 310, ; 130
	i32 16, ; 131
	i32 53, ; 132
	i32 0, ; 133
	i32 307, ; 134
	i32 278, ; 135
	i32 105, ; 136
	i32 283, ; 137
	i32 300, ; 138
	i32 276, ; 139
	i32 239, ; 140
	i32 34, ; 141
	i32 158, ; 142
	i32 85, ; 143
	i32 32, ; 144
	i32 309, ; 145
	i32 12, ; 146
	i32 51, ; 147
	i32 185, ; 148
	i32 56, ; 149
	i32 259, ; 150
	i32 36, ; 151
	i32 182, ; 152
	i32 277, ; 153
	i32 212, ; 154
	i32 35, ; 155
	i32 290, ; 156
	i32 58, ; 157
	i32 246, ; 158
	i32 176, ; 159
	i32 17, ; 160
	i32 201, ; 161
	i32 280, ; 162
	i32 164, ; 163
	i32 179, ; 164
	i32 312, ; 165
	i32 306, ; 166
	i32 302, ; 167
	i32 245, ; 168
	i32 188, ; 169
	i32 272, ; 170
	i32 308, ; 171
	i32 153, ; 172
	i32 183, ; 173
	i32 268, ; 174
	i32 253, ; 175
	i32 214, ; 176
	i32 29, ; 177
	i32 52, ; 178
	i32 273, ; 179
	i32 5, ; 180
	i32 288, ; 181
	i32 263, ; 182
	i32 267, ; 183
	i32 219, ; 184
	i32 284, ; 185
	i32 211, ; 186
	i32 230, ; 187
	i32 0, ; 188
	i32 297, ; 189
	i32 85, ; 190
	i32 272, ; 191
	i32 61, ; 192
	i32 112, ; 193
	i32 317, ; 194
	i32 57, ; 195
	i32 318, ; 196
	i32 259, ; 197
	i32 99, ; 198
	i32 19, ; 199
	i32 223, ; 200
	i32 111, ; 201
	i32 101, ; 202
	i32 102, ; 203
	i32 286, ; 204
	i32 104, ; 205
	i32 276, ; 206
	i32 71, ; 207
	i32 38, ; 208
	i32 32, ; 209
	i32 103, ; 210
	i32 73, ; 211
	i32 292, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 213, ; 216
	i32 190, ; 217
	i32 173, ; 218
	i32 9, ; 219
	i32 43, ; 220
	i32 4, ; 221
	i32 260, ; 222
	i32 185, ; 223
	i32 316, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 93, ; 228
	i32 191, ; 229
	i32 49, ; 230
	i32 141, ; 231
	i32 112, ; 232
	i32 140, ; 233
	i32 229, ; 234
	i32 115, ; 235
	i32 277, ; 236
	i32 157, ; 237
	i32 76, ; 238
	i32 79, ; 239
	i32 249, ; 240
	i32 37, ; 241
	i32 271, ; 242
	i32 175, ; 243
	i32 180, ; 244
	i32 233, ; 245
	i32 226, ; 246
	i32 64, ; 247
	i32 138, ; 248
	i32 15, ; 249
	i32 116, ; 250
	i32 265, ; 251
	i32 274, ; 252
	i32 221, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 94, ; 258
	i32 121, ; 259
	i32 281, ; 260
	i32 26, ; 261
	i32 242, ; 262
	i32 97, ; 263
	i32 28, ; 264
	i32 217, ; 265
	i32 287, ; 266
	i32 149, ; 267
	i32 169, ; 268
	i32 4, ; 269
	i32 98, ; 270
	i32 33, ; 271
	i32 93, ; 272
	i32 264, ; 273
	i32 186, ; 274
	i32 21, ; 275
	i32 41, ; 276
	i32 170, ; 277
	i32 303, ; 278
	i32 235, ; 279
	i32 295, ; 280
	i32 249, ; 281
	i32 280, ; 282
	i32 274, ; 283
	i32 254, ; 284
	i32 2, ; 285
	i32 134, ; 286
	i32 111, ; 287
	i32 187, ; 288
	i32 204, ; 289
	i32 312, ; 290
	i32 58, ; 291
	i32 95, ; 292
	i32 294, ; 293
	i32 39, ; 294
	i32 215, ; 295
	i32 25, ; 296
	i32 94, ; 297
	i32 288, ; 298
	i32 89, ; 299
	i32 99, ; 300
	i32 10, ; 301
	i32 87, ; 302
	i32 299, ; 303
	i32 100, ; 304
	i32 261, ; 305
	i32 177, ; 306
	i32 281, ; 307
	i32 206, ; 308
	i32 291, ; 309
	i32 7, ; 310
	i32 246, ; 311
	i32 203, ; 312
	i32 88, ; 313
	i32 241, ; 314
	i32 154, ; 315
	i32 290, ; 316
	i32 33, ; 317
	i32 184, ; 318
	i32 116, ; 319
	i32 82, ; 320
	i32 20, ; 321
	i32 11, ; 322
	i32 191, ; 323
	i32 162, ; 324
	i32 3, ; 325
	i32 195, ; 326
	i32 298, ; 327
	i32 189, ; 328
	i32 187, ; 329
	i32 84, ; 330
	i32 285, ; 331
	i32 64, ; 332
	i32 300, ; 333
	i32 268, ; 334
	i32 143, ; 335
	i32 250, ; 336
	i32 157, ; 337
	i32 41, ; 338
	i32 117, ; 339
	i32 178, ; 340
	i32 205, ; 341
	i32 257, ; 342
	i32 131, ; 343
	i32 75, ; 344
	i32 66, ; 345
	i32 175, ; 346
	i32 304, ; 347
	i32 172, ; 348
	i32 209, ; 349
	i32 143, ; 350
	i32 106, ; 351
	i32 151, ; 352
	i32 70, ; 353
	i32 298, ; 354
	i32 156, ; 355
	i32 177, ; 356
	i32 121, ; 357
	i32 127, ; 358
	i32 299, ; 359
	i32 152, ; 360
	i32 232, ; 361
	i32 141, ; 362
	i32 219, ; 363
	i32 296, ; 364
	i32 20, ; 365
	i32 14, ; 366
	i32 135, ; 367
	i32 75, ; 368
	i32 59, ; 369
	i32 222, ; 370
	i32 167, ; 371
	i32 168, ; 372
	i32 193, ; 373
	i32 15, ; 374
	i32 74, ; 375
	i32 6, ; 376
	i32 23, ; 377
	i32 302, ; 378
	i32 244, ; 379
	i32 203, ; 380
	i32 91, ; 381
	i32 174, ; 382
	i32 297, ; 383
	i32 1, ; 384
	i32 136, ; 385
	i32 301, ; 386
	i32 245, ; 387
	i32 267, ; 388
	i32 134, ; 389
	i32 69, ; 390
	i32 146, ; 391
	i32 183, ; 392
	i32 306, ; 393
	i32 285, ; 394
	i32 236, ; 395
	i32 188, ; 396
	i32 88, ; 397
	i32 96, ; 398
	i32 226, ; 399
	i32 231, ; 400
	i32 301, ; 401
	i32 31, ; 402
	i32 45, ; 403
	i32 240, ; 404
	i32 205, ; 405
	i32 109, ; 406
	i32 158, ; 407
	i32 35, ; 408
	i32 22, ; 409
	i32 114, ; 410
	i32 57, ; 411
	i32 265, ; 412
	i32 144, ; 413
	i32 118, ; 414
	i32 120, ; 415
	i32 110, ; 416
	i32 207, ; 417
	i32 139, ; 418
	i32 213, ; 419
	i32 287, ; 420
	i32 54, ; 421
	i32 105, ; 422
	i32 307, ; 423
	i32 194, ; 424
	i32 195, ; 425
	i32 133, ; 426
	i32 279, ; 427
	i32 270, ; 428
	i32 258, ; 429
	i32 313, ; 430
	i32 236, ; 431
	i32 198, ; 432
	i32 197, ; 433
	i32 159, ; 434
	i32 223, ; 435
	i32 163, ; 436
	i32 132, ; 437
	i32 258, ; 438
	i32 161, ; 439
	i32 247, ; 440
	i32 140, ; 441
	i32 270, ; 442
	i32 266, ; 443
	i32 169, ; 444
	i32 196, ; 445
	i32 208, ; 446
	i32 275, ; 447
	i32 40, ; 448
	i32 234, ; 449
	i32 81, ; 450
	i32 56, ; 451
	i32 37, ; 452
	i32 97, ; 453
	i32 166, ; 454
	i32 172, ; 455
	i32 184, ; 456
	i32 271, ; 457
	i32 82, ; 458
	i32 210, ; 459
	i32 98, ; 460
	i32 30, ; 461
	i32 159, ; 462
	i32 18, ; 463
	i32 127, ; 464
	i32 119, ; 465
	i32 230, ; 466
	i32 261, ; 467
	i32 243, ; 468
	i32 263, ; 469
	i32 165, ; 470
	i32 238, ; 471
	i32 320, ; 472
	i32 293, ; 473
	i32 260, ; 474
	i32 251, ; 475
	i32 170, ; 476
	i32 16, ; 477
	i32 144, ; 478
	i32 125, ; 479
	i32 118, ; 480
	i32 38, ; 481
	i32 115, ; 482
	i32 47, ; 483
	i32 142, ; 484
	i32 117, ; 485
	i32 34, ; 486
	i32 176, ; 487
	i32 95, ; 488
	i32 53, ; 489
	i32 252, ; 490
	i32 129, ; 491
	i32 153, ; 492
	i32 24, ; 493
	i32 161, ; 494
	i32 229, ; 495
	i32 148, ; 496
	i32 104, ; 497
	i32 89, ; 498
	i32 217, ; 499
	i32 60, ; 500
	i32 142, ; 501
	i32 100, ; 502
	i32 5, ; 503
	i32 13, ; 504
	i32 122, ; 505
	i32 135, ; 506
	i32 28, ; 507
	i32 293, ; 508
	i32 72, ; 509
	i32 227, ; 510
	i32 24, ; 511
	i32 215, ; 512
	i32 256, ; 513
	i32 253, ; 514
	i32 310, ; 515
	i32 137, ; 516
	i32 208, ; 517
	i32 224, ; 518
	i32 168, ; 519
	i32 257, ; 520
	i32 289, ; 521
	i32 101, ; 522
	i32 123, ; 523
	i32 228, ; 524
	i32 181, ; 525
	i32 163, ; 526
	i32 167, ; 527
	i32 231, ; 528
	i32 39, ; 529
	i32 192, ; 530
	i32 308, ; 531
	i32 17, ; 532
	i32 171, ; 533
	i32 309, ; 534
	i32 137, ; 535
	i32 150, ; 536
	i32 220, ; 537
	i32 155, ; 538
	i32 130, ; 539
	i32 19, ; 540
	i32 65, ; 541
	i32 147, ; 542
	i32 47, ; 543
	i32 317, ; 544
	i32 319, ; 545
	i32 206, ; 546
	i32 79, ; 547
	i32 61, ; 548
	i32 106, ; 549
	i32 255, ; 550
	i32 210, ; 551
	i32 49, ; 552
	i32 241, ; 553
	i32 314, ; 554
	i32 252, ; 555
	i32 14, ; 556
	i32 178, ; 557
	i32 68, ; 558
	i32 171, ; 559
	i32 216, ; 560
	i32 220, ; 561
	i32 200, ; 562
	i32 78, ; 563
	i32 225, ; 564
	i32 108, ; 565
	i32 209, ; 566
	i32 180, ; 567
	i32 251, ; 568
	i32 67, ; 569
	i32 63, ; 570
	i32 27, ; 571
	i32 160, ; 572
	i32 289, ; 573
	i32 179, ; 574
	i32 218, ; 575
	i32 10, ; 576
	i32 192, ; 577
	i32 11, ; 578
	i32 202, ; 579
	i32 78, ; 580
	i32 126, ; 581
	i32 83, ; 582
	i32 182, ; 583
	i32 66, ; 584
	i32 107, ; 585
	i32 65, ; 586
	i32 128, ; 587
	i32 122, ; 588
	i32 77, ; 589
	i32 266, ; 590
	i32 256, ; 591
	i32 8, ; 592
	i32 224, ; 593
	i32 2, ; 594
	i32 305, ; 595
	i32 44, ; 596
	i32 269, ; 597
	i32 156, ; 598
	i32 128, ; 599
	i32 254, ; 600
	i32 23, ; 601
	i32 201, ; 602
	i32 133, ; 603
	i32 212, ; 604
	i32 243, ; 605
	i32 199, ; 606
	i32 29, ; 607
	i32 211, ; 608
	i32 62, ; 609
	i32 194, ; 610
	i32 90, ; 611
	i32 87, ; 612
	i32 148, ; 613
	i32 291, ; 614
	i32 196, ; 615
	i32 36, ; 616
	i32 86, ; 617
	i32 232, ; 618
	i32 315, ; 619
	i32 181, ; 620
	i32 50, ; 621
	i32 6, ; 622
	i32 90, ; 623
	i32 315, ; 624
	i32 21, ; 625
	i32 162, ; 626
	i32 96, ; 627
	i32 50, ; 628
	i32 113, ; 629
	i32 248, ; 630
	i32 130, ; 631
	i32 76, ; 632
	i32 27, ; 633
	i32 304, ; 634
	i32 225, ; 635
	i32 247, ; 636
	i32 7, ; 637
	i32 193, ; 638
	i32 110, ; 639
	i32 248, ; 640
	i32 234 ; 641
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
