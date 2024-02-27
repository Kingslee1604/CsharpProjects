; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [154 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [308 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 50
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 153
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 55
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 115
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 65
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 82
	i64 648449422406355874, ; 6: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 40
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 58
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 141
	i64 799765834175365804, ; 9: System.ComponentModel.dll => 0xb1956c9f18442ac => 97
	i64 805302231655005164, ; 10: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 12
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 70
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 86
	i64 1268860745194512059, ; 13: System.Drawing.dll => 0x119be62002c19ebb => 105
	i64 1369545283391376210, ; 14: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 78
	i64 1404195534211153682, ; 15: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 111
	i64 1476839205573959279, ; 16: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 119
	i64 1486715745332614827, ; 17: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 52
	i64 1513467482682125403, ; 18: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 152
	i64 1537168428375924959, ; 19: System.Threading.Thread.dll => 0x15551e8a954ae0df => 141
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 63
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 75
	i64 1743969030606105336, ; 22: System.Memory.dll => 0x1833d297e88f2af8 => 117
	i64 1767386781656293639, ; 23: System.Private.Uri.dll => 0x188704e9f5582107 => 124
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 62
	i64 1835311033149317475, ; 25: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 26: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 82
	i64 1875417405349196092, ; 27: System.Drawing.Primitives => 0x1a06d2319b6c713c => 104
	i64 1881198190668717030, ; 28: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 29: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 53
	i64 1981742497975770890, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 74
	i64 2102659300918482391, ; 31: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 104
	i64 2262844636196693701, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 70
	i64 2287834202362508563, ; 33: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 90
	i64 2315304989185124968, ; 34: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 112
	i64 2329709569556905518, ; 35: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2470498323731680442, ; 36: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 66
	i64 2497223385847772520, ; 37: System.Runtime => 0x22a7eb7046413568 => 132
	i64 2547086958574651984, ; 38: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 61
	i64 2602673633151553063, ; 39: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 40: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 42
	i64 2662981627730767622, ; 41: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2745381263179111323, ; 42: EPPlus.dll => 0x26198db694cddb9b => 35
	i64 2777234600790290333, ; 43: EPPlus.Interfaces => 0x268ab827ae076f9d => 36
	i64 2895129759130297543, ; 44: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 45: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 86
	i64 3289520064315143713, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3311221304742556517, ; 47: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 122
	i64 3325875462027654285, ; 48: System.Runtime.Numerics => 0x2e27e21c8958b48d => 131
	i64 3328853167529574890, ; 49: System.Net.Sockets.dll => 0x2e327651a008c1ea => 121
	i64 3344514922410554693, ; 50: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 88
	i64 3396143930648122816, ; 51: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 44
	i64 3429672777697402584, ; 52: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 55
	i64 3494946837667399002, ; 53: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 38
	i64 3522470458906976663, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 83
	i64 3551103847008531295, ; 55: System.Private.CoreLib.dll => 0x31480e226177735f => 150
	i64 3567343442040498961, ; 56: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 57: System.Runtime.dll => 0x319037675df7e556 => 132
	i64 3638003163729360188, ; 58: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 39
	i64 3647754201059316852, ; 59: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 146
	i64 3655542548057982301, ; 60: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 38
	i64 3727469159507183293, ; 61: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 81
	i64 3869221888984012293, ; 62: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 47
	i64 3889433610606858880, ; 63: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 45
	i64 3890352374528606784, ; 64: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 53
	i64 3933965368022646939, ; 65: System.Net.Requests => 0x369840a8bfadc09b => 120
	i64 3966267475168208030, ; 66: System.Memory => 0x370b03412596249e => 117
	i64 4070326265757318011, ; 67: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 3
	i64 4073500526318903918, ; 68: System.Private.Xml.dll => 0x3887fb25779ae26e => 126
	i64 4120493066591692148, ; 69: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 70: System.ComponentModel => 0x39a7562737acb67e => 97
	i64 4167269041631776580, ; 71: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 142
	i64 4168469861834746866, ; 72: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 133
	i64 4187479170553454871, ; 73: System.Linq.Expressions => 0x3a1cea1e912fa117 => 115
	i64 4205801962323029395, ; 74: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 96
	i64 4360412976914417659, ; 75: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 28
	i64 4373617458794931033, ; 76: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 113
	i64 4477672992252076438, ; 77: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 144
	i64 4672453897036726049, ; 78: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 111
	i64 4743821336939966868, ; 79: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 94
	i64 4794310189461587505, ; 80: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 61
	i64 4795410492532947900, ; 81: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 83
	i64 4809057822547766521, ; 82: System.Drawing => 0x42bd349c3145ecf9 => 105
	i64 4871824391508510238, ; 83: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 18
	i64 4953714692329509532, ; 84: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 26
	i64 5081566143765835342, ; 85: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 128
	i64 5099468265966638712, ; 86: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 128
	i64 5103417709280584325, ; 87: System.Collections.Specialized => 0x46d2fb5e161b6285 => 92
	i64 5182934613077526976, ; 88: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 92
	i64 5446034149219586269, ; 89: System.Diagnostics.Debug => 0x4b94333452e150dd => 100
	i64 5471532531798518949, ; 90: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 91: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5527431512186326818, ; 92: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 110
	i64 5570799893513421663, ; 93: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 108
	i64 5573260873512690141, ; 94: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 134
	i64 5692067934154308417, ; 95: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 85
	i64 5757962424499843471, ; 96: OfficeOpenXml.Core.ExcelPackage.dll => 0x4fe864516e5c318f => 57
	i64 5892310748065238056, ; 97: EPPlus.System.Drawing.dll => 0x51c5b16814a50c28 => 37
	i64 5979151488806146654, ; 98: System.Formats.Asn1 => 0x52fa3699a489d25e => 106
	i64 6200764641006662125, ; 99: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 100: System.Text.Json.dll => 0x565a67a0ffe264a7 => 139
	i64 6300676701234028427, ; 101: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 6
	i64 6357457916754632952, ; 102: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6471714727257221498, ; 104: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 7
	i64 6478287442656530074, ; 105: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 106: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 69
	i64 6560151584539558821, ; 107: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 49
	i64 6617685658146568858, ; 108: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 136
	i64 6743165466166707109, ; 109: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6814185388980153342, ; 110: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 147
	i64 6876862101832370452, ; 111: System.Xml.Linq => 0x5f6f85a57d108914 => 145
	i64 6894844156784520562, ; 112: System.Numerics.Vectors => 0x5faf683aead1ad72 => 122
	i64 7083547580668757502, ; 113: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 125
	i64 7105430439328552570, ; 114: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 60
	i64 7112547816752919026, ; 115: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 112
	i64 7270811800166795866, ; 116: System.Linq => 0x64e71ccf51a90a5a => 116
	i64 7338192458477945005, ; 117: System.Reflection => 0x65d67f295d0740ad => 127
	i64 7377312882064240630, ; 118: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 96
	i64 7488575175965059935, ; 119: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 145
	i64 7489048572193775167, ; 120: System.ObjectModel => 0x67ee71ff6b419e3f => 123
	i64 7592577537120840276, ; 121: System.Diagnostics.Process => 0x695e410af5b2aa54 => 102
	i64 7654504624184590948, ; 122: System.Net.Http => 0x6a3a4366801b8264 => 118
	i64 7674255102467164136, ; 123: EPPlus.System.Drawing => 0x6a806e5b1248c7e8 => 37
	i64 7714652370974252055, ; 124: System.Private.CoreLib => 0x6b0ff375198b9c17 => 150
	i64 7735352534559001595, ; 125: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 87
	i64 7742555799473854801, ; 126: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 14
	i64 7836164640616011524, ; 127: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 63
	i64 7975724199463739455, ; 128: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 25
	i64 8064050204834738623, ; 129: System.Collections.dll => 0x6fe942efa61731bf => 93
	i64 8083354569033831015, ; 130: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 131: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 101
	i64 8108129031893776750, ; 132: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 16
	i64 8167236081217502503, ; 133: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 151
	i64 8185542183669246576, ; 134: System.Collections => 0x7198e33f4794aa70 => 93
	i64 8246048515196606205, ; 135: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 56
	i64 8264926008854159966, ; 136: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 102
	i64 8290740647658429042, ; 137: System.Runtime.Extensions => 0x730ea0b15c929a72 => 129
	i64 8368701292315763008, ; 138: System.Security.Cryptography => 0x7423997c6fd56140 => 134
	i64 8386351099740279196, ; 139: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 31
	i64 8400357532724379117, ; 140: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 80
	i64 8563666267364444763, ; 141: System.Private.Uri => 0x76d841191140ca5b => 124
	i64 8594639773772191234, ; 142: EPPlus.Interfaces.dll => 0x77464b5680229602 => 36
	i64 8626175481042262068, ; 143: Java.Interop => 0x77b654e585b55834 => 151
	i64 8639588376636138208, ; 144: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 79
	i64 8677882282824630478, ; 145: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 146: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 101
	i64 8941376889969657626, ; 147: System.Xml.XDocument => 0x7c1626e87187471a => 147
	i64 9045785047181495996, ; 148: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 149: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 85
	i64 9324707631942237306, ; 150: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 62
	i64 9363564275759486853, ; 151: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 5
	i64 9468215723722196442, ; 152: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 148
	i64 9551379474083066910, ; 153: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 29
	i64 9584643793929893533, ; 154: System.IO.dll => 0x85037ebfbbd7f69d => 114
	i64 9650158550865574924, ; 155: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 41
	i64 9659729154652888475, ; 156: System.Text.RegularExpressions => 0x860e407c9991dd9b => 140
	i64 9678050649315576968, ; 157: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 66
	i64 9702891218465930390, ; 158: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 91
	i64 9773637193738963987, ; 159: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 1
	i64 9808709177481450983, ; 160: Mono.Android.dll => 0x881f890734e555e7 => 153
	i64 9956195530459977388, ; 161: Microsoft.Maui => 0x8a2b8315b36616ac => 54
	i64 10038780035334861115, ; 162: System.Net.Http.dll => 0x8b50e941206af13b => 118
	i64 10051358222726253779, ; 163: System.Private.Xml => 0x8b7d990c97ccccd3 => 126
	i64 10092835686693276772, ; 164: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 52
	i64 10143853363526200146, ; 165: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10209869394718195525, ; 166: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 19
	i64 10229024438826829339, ; 167: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 69
	i64 10360651442923773544, ; 168: System.Text.Encoding => 0x8fc86d98211c1e68 => 138
	i64 10406448008575299332, ; 169: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 88
	i64 10430153318873392755, ; 170: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 67
	i64 10506226065143327199, ; 171: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10566960649245365243, ; 172: System.Globalization.dll => 0x92a562b96dcd13fb => 107
	i64 10595762989148858956, ; 173: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 148
	i64 10650478070646097812, ; 174: System.IO.Packaging => 0x93ce196068f2c794 => 59
	i64 10714184849103829812, ; 175: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 129
	i64 10761706286639228993, ; 176: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 33
	i64 10785150219063592792, ; 177: System.Net.Primitives => 0x95ac8cfb68830758 => 119
	i64 10964653383833615866, ; 178: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 103
	i64 11002576679268595294, ; 179: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 48
	i64 11009005086950030778, ; 180: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 54
	i64 11080701163514929111, ; 181: TestPro.dll => 0x99c68f0009909fd7 => 89
	i64 11103970607964515343, ; 182: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11156122287428000958, ; 183: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 27
	i64 11157797727133427779, ; 184: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 8
	i64 11162124722117608902, ; 185: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 84
	i64 11220793807500858938, ; 186: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 187: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 49
	i64 11340910727871153756, ; 188: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 68
	i64 11485890710487134646, ; 189: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 130
	i64 11518296021396496455, ; 190: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 84
	i64 11530571088791430846, ; 192: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 47
	i64 11651594859537138993, ; 193: OfficeOpenXml.Core.ExcelPackage => 0xa1b2c7cabd7a8531 => 57
	i64 11855031688536399763, ; 194: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 30
	i64 12048689113179125827, ; 195: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 45
	i64 12058074296353848905, ; 196: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 46
	i64 12145679461940342714, ; 197: System.Text.Json => 0xa88e1f1ebcb62fba => 139
	i64 12451044538927396471, ; 198: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 71
	i64 12466513435562512481, ; 199: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 76
	i64 12475113361194491050, ; 200: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12538491095302438457, ; 201: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 64
	i64 12550732019250633519, ; 202: System.IO.Compression => 0xae2d28465e8e1b2f => 109
	i64 12700543734426720211, ; 203: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 65
	i64 12708238894395270091, ; 204: System.IO => 0xb05cbbf17d3ba3cb => 114
	i64 12708922737231849740, ; 205: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 137
	i64 12835242264250840079, ; 206: System.IO.Pipes => 0xb21ff0d5d6c0740f => 113
	i64 12843321153144804894, ; 207: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 50
	i64 12963446364377008305, ; 208: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 58
	i64 12989346753972519995, ; 209: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 0
	i64 13005833372463390146, ; 210: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 21
	i64 13343850469010654401, ; 211: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 152
	i64 13381594904270902445, ; 212: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 213: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 87
	i64 13540124433173649601, ; 214: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13550417756503177631, ; 215: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 44
	i64 13572454107664307259, ; 216: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 81
	i64 13717397318615465333, ; 217: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 95
	i64 13881769479078963060, ; 218: System.Console.dll => 0xc0a5f3cade5c6774 => 98
	i64 13959074834287824816, ; 219: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 71
	i64 14124974489674258913, ; 220: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 64
	i64 14125464355221830302, ; 221: System.Threading.dll => 0xc407bafdbc707a9e => 143
	i64 14254574811015963973, ; 222: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 137
	i64 14327695147300244862, ; 223: System.Reflection.dll => 0xc6d632d338eb4d7e => 127
	i64 14349907877893689639, ; 224: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 23
	i64 14461014870687870182, ; 225: System.Net.Requests.dll => 0xc8afd8683afdece6 => 120
	i64 14464374589798375073, ; 226: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14491877563792607819, ; 227: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 32
	i64 14610046442689856844, ; 228: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 2
	i64 14669215534098758659, ; 229: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 42
	i64 14690985099581930927, ; 230: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 144
	i64 14705122255218365489, ; 231: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14735017007120366644, ; 232: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 15
	i64 14744092281598614090, ; 233: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14832630590065248058, ; 234: System.Security.Claims => 0xcdd816ef5d6e873a => 133
	i64 14852515768018889994, ; 235: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 68
	i64 14860392635077829057, ; 236: EPPlus => 0xce3ab85e2ca521c1 => 35
	i64 14904040806490515477, ; 237: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14912225920358050525, ; 238: System.Security.Principal.Windows => 0xcef2de7759506add => 135
	i64 14935719434541007538, ; 239: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 136
	i64 14954917835170835695, ; 240: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 43
	i64 14987728460634540364, ; 241: System.IO.Compression.dll => 0xcfff1ba06622494c => 109
	i64 15076659072870671916, ; 242: System.ObjectModel.dll => 0xd13b0d8c1620662c => 123
	i64 15111608613780139878, ; 243: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 244: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 108
	i64 15133485256822086103, ; 245: System.Linq.dll => 0xd204f0a9127dd9d7 => 116
	i64 15203009853192377507, ; 246: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 22
	i64 15227001540531775957, ; 247: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 39
	i64 15370334346939861994, ; 248: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 67
	i64 15391712275433856905, ; 249: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 43
	i64 15526743539506359484, ; 250: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 138
	i64 15527772828719725935, ; 251: System.Console => 0xd77dbb1e38cd3d6f => 98
	i64 15536481058354060254, ; 252: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 253: System.Net.Sockets => 0xd7e790fe7a6dc536 => 121
	i64 15582737692548360875, ; 254: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 75
	i64 15609085926864131306, ; 255: System.dll => 0xd89e9cf3334914ea => 149
	i64 15661133872274321916, ; 256: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 146
	i64 15755368083429170162, ; 257: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 110
	i64 15783653065526199428, ; 258: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15827202283623377193, ; 259: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 41
	i64 16056281320585338352, ; 260: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 24
	i64 16154507427712707110, ; 261: System => 0xe03056ea4e39aa26 => 149
	i64 16288847719894691167, ; 262: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 263: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 48
	i64 16337011941688632206, ; 264: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 135
	i64 16649148416072044166, ; 265: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 56
	i64 16677317093839702854, ; 266: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 80
	i64 16803648858859583026, ; 267: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 17
	i64 16856067890322379635, ; 268: System.Data.Common.dll => 0xe9ecc87060889373 => 99
	i64 16890310621557459193, ; 269: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 140
	i64 16942731696432749159, ; 270: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 271: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 78
	i64 17008137082415910100, ; 272: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 91
	i64 17031351772568316411, ; 273: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 77
	i64 17047433665992082296, ; 274: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 40
	i64 17062143951396181894, ; 275: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 95
	i64 17187273293601214786, ; 276: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 94
	i64 17203614576212522419, ; 277: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 20
	i64 17205988430934219272, ; 278: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 46
	i64 17230721278011714856, ; 279: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 125
	i64 17260702271250283638, ; 280: System.Data.Common => 0xef8a5543bba6bc76 => 99
	i64 17310278548634113468, ; 281: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 10
	i64 17333249706306540043, ; 282: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 103
	i64 17342750010158924305, ; 283: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17514990004910432069, ; 284: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17608862831326185980, ; 285: Microsoft.IO.RecyclableMemoryStream.dll => 0xf45f3f7307c6c9fc => 51
	i64 17623389608345532001, ; 286: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17627500474728259406, ; 287: System.Globalization => 0xf4a176498a351f4e => 107
	i64 17685921127322830888, ; 288: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 100
	i64 17704177640604968747, ; 289: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 76
	i64 17710060891934109755, ; 290: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 74
	i64 17712670374920797664, ; 291: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 130
	i64 17777860260071588075, ; 292: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 131
	i64 17827813215687577648, ; 293: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 11
	i64 17942426894774770628, ; 294: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 4
	i64 17958341848870185232, ; 295: Microsoft.IO.RecyclableMemoryStream => 0xf938d8c3a0f06910 => 51
	i64 18025913125965088385, ; 296: System.Threading => 0xfa28e87b91334681 => 143
	i64 18121036031235206392, ; 297: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 77
	i64 18146411883821974900, ; 298: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 106
	i64 18187245016108078972, ; 299: TestPro => 0xfc6612fb641d977c => 89
	i64 18203743254473369877, ; 300: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 60
	i64 18225059387460068507, ; 301: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 142
	i64 18245806341561545090, ; 302: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 90
	i64 18284618658670613420, ; 303: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 59
	i64 18305135509493619199, ; 304: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 79
	i64 18324163916253801303, ; 305: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18342408478508122430, ; 306: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 13
	i64 18358161419737137786 ; 307: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 9
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [308 x i32] [
	i32 50, ; 0
	i32 153, ; 1
	i32 55, ; 2
	i32 115, ; 3
	i32 65, ; 4
	i32 82, ; 5
	i32 40, ; 6
	i32 58, ; 7
	i32 141, ; 8
	i32 97, ; 9
	i32 12, ; 10
	i32 70, ; 11
	i32 86, ; 12
	i32 105, ; 13
	i32 78, ; 14
	i32 111, ; 15
	i32 119, ; 16
	i32 52, ; 17
	i32 152, ; 18
	i32 141, ; 19
	i32 63, ; 20
	i32 75, ; 21
	i32 117, ; 22
	i32 124, ; 23
	i32 62, ; 24
	i32 6, ; 25
	i32 82, ; 26
	i32 104, ; 27
	i32 28, ; 28
	i32 53, ; 29
	i32 74, ; 30
	i32 104, ; 31
	i32 70, ; 32
	i32 90, ; 33
	i32 112, ; 34
	i32 73, ; 35
	i32 66, ; 36
	i32 132, ; 37
	i32 61, ; 38
	i32 27, ; 39
	i32 42, ; 40
	i32 2, ; 41
	i32 35, ; 42
	i32 36, ; 43
	i32 7, ; 44
	i32 86, ; 45
	i32 72, ; 46
	i32 122, ; 47
	i32 131, ; 48
	i32 121, ; 49
	i32 88, ; 50
	i32 44, ; 51
	i32 55, ; 52
	i32 38, ; 53
	i32 83, ; 54
	i32 150, ; 55
	i32 22, ; 56
	i32 132, ; 57
	i32 39, ; 58
	i32 146, ; 59
	i32 38, ; 60
	i32 81, ; 61
	i32 47, ; 62
	i32 45, ; 63
	i32 53, ; 64
	i32 120, ; 65
	i32 117, ; 66
	i32 3, ; 67
	i32 126, ; 68
	i32 33, ; 69
	i32 97, ; 70
	i32 142, ; 71
	i32 133, ; 72
	i32 115, ; 73
	i32 96, ; 74
	i32 28, ; 75
	i32 113, ; 76
	i32 144, ; 77
	i32 111, ; 78
	i32 94, ; 79
	i32 61, ; 80
	i32 83, ; 81
	i32 105, ; 82
	i32 18, ; 83
	i32 26, ; 84
	i32 128, ; 85
	i32 128, ; 86
	i32 92, ; 87
	i32 92, ; 88
	i32 100, ; 89
	i32 26, ; 90
	i32 29, ; 91
	i32 110, ; 92
	i32 108, ; 93
	i32 134, ; 94
	i32 85, ; 95
	i32 57, ; 96
	i32 37, ; 97
	i32 106, ; 98
	i32 23, ; 99
	i32 139, ; 100
	i32 6, ; 101
	i32 34, ; 102
	i32 73, ; 103
	i32 7, ; 104
	i32 11, ; 105
	i32 69, ; 106
	i32 49, ; 107
	i32 136, ; 108
	i32 19, ; 109
	i32 147, ; 110
	i32 145, ; 111
	i32 122, ; 112
	i32 125, ; 113
	i32 60, ; 114
	i32 112, ; 115
	i32 116, ; 116
	i32 127, ; 117
	i32 96, ; 118
	i32 145, ; 119
	i32 123, ; 120
	i32 102, ; 121
	i32 118, ; 122
	i32 37, ; 123
	i32 150, ; 124
	i32 87, ; 125
	i32 14, ; 126
	i32 63, ; 127
	i32 25, ; 128
	i32 93, ; 129
	i32 72, ; 130
	i32 101, ; 131
	i32 16, ; 132
	i32 151, ; 133
	i32 93, ; 134
	i32 56, ; 135
	i32 102, ; 136
	i32 129, ; 137
	i32 134, ; 138
	i32 31, ; 139
	i32 80, ; 140
	i32 124, ; 141
	i32 36, ; 142
	i32 151, ; 143
	i32 79, ; 144
	i32 21, ; 145
	i32 101, ; 146
	i32 147, ; 147
	i32 31, ; 148
	i32 85, ; 149
	i32 62, ; 150
	i32 5, ; 151
	i32 148, ; 152
	i32 29, ; 153
	i32 114, ; 154
	i32 41, ; 155
	i32 140, ; 156
	i32 66, ; 157
	i32 91, ; 158
	i32 1, ; 159
	i32 153, ; 160
	i32 54, ; 161
	i32 118, ; 162
	i32 126, ; 163
	i32 52, ; 164
	i32 3, ; 165
	i32 19, ; 166
	i32 69, ; 167
	i32 138, ; 168
	i32 88, ; 169
	i32 67, ; 170
	i32 1, ; 171
	i32 107, ; 172
	i32 148, ; 173
	i32 59, ; 174
	i32 129, ; 175
	i32 33, ; 176
	i32 119, ; 177
	i32 103, ; 178
	i32 48, ; 179
	i32 54, ; 180
	i32 89, ; 181
	i32 12, ; 182
	i32 27, ; 183
	i32 8, ; 184
	i32 84, ; 185
	i32 15, ; 186
	i32 49, ; 187
	i32 68, ; 188
	i32 130, ; 189
	i32 13, ; 190
	i32 84, ; 191
	i32 47, ; 192
	i32 57, ; 193
	i32 30, ; 194
	i32 45, ; 195
	i32 46, ; 196
	i32 139, ; 197
	i32 71, ; 198
	i32 76, ; 199
	i32 34, ; 200
	i32 64, ; 201
	i32 109, ; 202
	i32 65, ; 203
	i32 114, ; 204
	i32 137, ; 205
	i32 113, ; 206
	i32 50, ; 207
	i32 58, ; 208
	i32 0, ; 209
	i32 21, ; 210
	i32 152, ; 211
	i32 9, ; 212
	i32 87, ; 213
	i32 30, ; 214
	i32 44, ; 215
	i32 81, ; 216
	i32 95, ; 217
	i32 98, ; 218
	i32 71, ; 219
	i32 64, ; 220
	i32 143, ; 221
	i32 137, ; 222
	i32 127, ; 223
	i32 23, ; 224
	i32 120, ; 225
	i32 24, ; 226
	i32 32, ; 227
	i32 2, ; 228
	i32 42, ; 229
	i32 144, ; 230
	i32 16, ; 231
	i32 15, ; 232
	i32 32, ; 233
	i32 133, ; 234
	i32 68, ; 235
	i32 35, ; 236
	i32 0, ; 237
	i32 135, ; 238
	i32 136, ; 239
	i32 43, ; 240
	i32 109, ; 241
	i32 123, ; 242
	i32 17, ; 243
	i32 108, ; 244
	i32 116, ; 245
	i32 22, ; 246
	i32 39, ; 247
	i32 67, ; 248
	i32 43, ; 249
	i32 138, ; 250
	i32 98, ; 251
	i32 4, ; 252
	i32 121, ; 253
	i32 75, ; 254
	i32 149, ; 255
	i32 146, ; 256
	i32 110, ; 257
	i32 5, ; 258
	i32 41, ; 259
	i32 24, ; 260
	i32 149, ; 261
	i32 18, ; 262
	i32 48, ; 263
	i32 135, ; 264
	i32 56, ; 265
	i32 80, ; 266
	i32 17, ; 267
	i32 99, ; 268
	i32 140, ; 269
	i32 25, ; 270
	i32 78, ; 271
	i32 91, ; 272
	i32 77, ; 273
	i32 40, ; 274
	i32 95, ; 275
	i32 94, ; 276
	i32 20, ; 277
	i32 46, ; 278
	i32 125, ; 279
	i32 99, ; 280
	i32 10, ; 281
	i32 103, ; 282
	i32 10, ; 283
	i32 8, ; 284
	i32 51, ; 285
	i32 20, ; 286
	i32 107, ; 287
	i32 100, ; 288
	i32 76, ; 289
	i32 74, ; 290
	i32 130, ; 291
	i32 131, ; 292
	i32 11, ; 293
	i32 4, ; 294
	i32 51, ; 295
	i32 143, ; 296
	i32 77, ; 297
	i32 106, ; 298
	i32 89, ; 299
	i32 60, ; 300
	i32 142, ; 301
	i32 90, ; 302
	i32 59, ; 303
	i32 79, ; 304
	i32 14, ; 305
	i32 13, ; 306
	i32 9 ; 307
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ f1b7113872c8db3dfee70d11925e81bb752dc8d0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
