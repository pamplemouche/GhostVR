.class public Lcom/facebook/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field public static final ALOHA_APP_ID:J = 0x4ca832fcfcf8eL

.field public static final ALOHA_WORK_VC_APP_ID:J = 0x5ea71629d4e18L

.field public static final ANDROIDTV_APP_ID:J = 0x18dc258053d06L

.field public static final APPLICATION_API_KEY:Ljava/lang/String; = "882a8490361da98702bf97a021ddc14d"

.field public static final APP_SECRET:Ljava/lang/String; = "62f8ce9f74b12f84c123cc23437a4a32"

.field public static final ARSTUDIO_PLAYER_APP_ID:J = 0x160d8af2dbbc7L

.field public static final BELL_APP_ID:J = 0x761380cafca5aL

.field public static final BUILD_SIGNATURE_DEBUG:Ljava/lang/String; = "Xo8WBi6jzSxKDVR4drqm84yr9iU"

.field public static final BUILD_SIGNATURE_IN_HOUSE:Ljava/lang/String; = "pLdFLi7Y9fGRBYynu_0msNMhS_w"

.field public static final BUILD_SIGNATURE_PROD:Ljava/lang/String; = "ijxLJi1yGs1JpL-X1SExmchvork"

.field public static final CONTACTS_APP_ID:J = 0x2301e8e54cc21L

.field private static final CPU_FILTERS:Ljava/lang/String;

.field public static final FACEBOOK_APP_ID:J = 0x51a67c8e50L

.field public static final FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final FBLITE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.lite"

.field public static final FB_URL_SCHEME:Ljava/lang/String;

.field public static final FB_USER_AGENT:Ljava/lang/String;

.field public static final FIRETV_APP_ID:J = 0x3153d3994088eL

.field public static final GOOGLE_MAPS_API_KEY_DEBUG:Ljava/lang/String; = "0SmP9AZrwrsbrHR2RyVaQ-sqRoukl2MAjk04Ibg"

.field public static final GOOGLE_MAPS_API_KEY_IN_HOUSE:Ljava/lang/String; = "0e1ruJ7mZbBXS0h1Ffa7wWK4SMcshAyydjcm1qg"

.field public static final GOOGLE_MAPS_API_KEY_PROD:Ljava/lang/String; = "0e1ruJ7mZbBWslnLnQQ5RPITlJs7QBrg8JYbTyg"

.field public static final GRAPHCURSORSAMPLE_APP_ID:J = 0x19be96b98177cL

.field public static final GROUPS_APP_ID:J = 0x1463bf0d5ddbdL

.field public static final INSTAGRAM_APP_ID:J = 0x203bea790726bL

.field public static final INTERNAL_CAMERA_APP_ID:J = 0x11deab55b1fa5L

.field public static final IORG_APP_ID:J = 0x51478b21ffc40L

.field private static final IS_ALDRIN_BUILD:Z

.field private static final IS_ALOHA_BUILD_FOR_VENDOR:Z

.field private static final IS_ALOHA_WORK_VC_BUILD:Z

.field private static final IS_DEBUG_BUILD:Z

.field private static final IS_EXOPACKAGE_BUILD:Z

.field private static final IS_INTERNAL_BUILD:Z

.field private static final IS_LOG_RELEASE:Z

.field private static final IS_MESSENGER_BUILD:Z

.field private static final IS_NEW_SIGNATURE_BUILD:Z

.field private static final IS_PERF_TEST:Z

.field private static final IS_TALK_BUILD:Z

.field private static final IS_TALK_KINDLE_BUILD:Z

.field private static final IS_WORK_BUILD:Z

.field public static final MAPS_APP_ID:J = 0x5253ece737893L

.field public static final MESSENGER_APP_ID:J = 0xe8d530ffbaefL

.field public static final MESSENGER_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final MESSENGER_DEV_APP_ID:J = 0xa5015654201aL

.field public static final MESSENGER_IN_HOUSE_APP_ID:J = 0x60534f876f41L

.field public static final MESSENGER_LITE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.mlite"

.field public static final MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

.field public static final MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

.field public static final MESSENGER_URL_SCHEME:Ljava/lang/String;

.field private static final MODULAR_EXOPACKAGE_FLAG:I = 0x8

.field public static final MOMENTS_APP_ID:J = 0x2d3022abd8f60L

.field private static final NATIVE_LIBRARY_EXOPACKAGE_FLAG:I = 0x2

.field public static final PARTIES_APP_ID:J = 0x4d0ef506116e9L

.field public static final PMA_APP_ID:J = 0x6ed8817fab7aL

.field public static final PMA_APP_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.pages.app"

.field public static final QUERYEXECUTORSAMPLE_APP_ID:J = 0x4e6f5655fea3dL

.field private static final RESOURCES_EXOPACKAGE_FLAG:I = 0x4

.field public static final SECONDARY_PROCESSES_WITH_MULTIDEX:[Ljava/lang/String;

.field public static final TALK_APP_ID:J = 0x3ecf02ae84d63L

.field public static final TALK_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final TALK_KINDLE_APP_ID:J = 0x23baa1aa13b1cL

.field public static final TELLY_APP_ID:J = 0xc1dc2a0ecf12L

.field public static final TELLY_CLIENT_APP_ID:J = 0x10cecce317e32L

.field public static final TELLY_OTA_APP_ID:J = 0x283052b00cab2L

.field public static final WORK_APP_ID:J = 0x52007e36d879cL

.field public static final WORK_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final WORK_CHAT_APP_ID:J = 0x11c693bb5535eL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_INTERNAL_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    .line 18
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_NEW_SIGNATURE_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_NEW_SIGNATURE_BUILD:Z

    .line 19
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_WORK:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_WORK_BUILD:Z

    .line 20
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALOHA_WORK_VC:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_WORK_VC_BUILD:Z

    .line 21
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALOHA_BUILD_FOR_VENDOR:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_BUILD_FOR_VENDOR:Z

    .line 22
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_MESSENGER:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_MESSENGER_BUILD:Z

    .line 23
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_DEBUG_BUILD:Z

    .line 24
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALDRIN:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALDRIN_BUILD:Z

    .line 25
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_PERF_TEST:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_PERF_TEST:Z

    .line 26
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_LOG_RELEASE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_LOG_RELEASE:Z

    .line 27
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_TALK_KINDLE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_KINDLE_BUILD:Z

    .line 28
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_TALK_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_BUILD:Z

    .line 29
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_EXOPACKAGE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_EXOPACKAGE_BUILD:Z

    .line 30
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->CPU_FILTERS:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->CPU_FILTERS:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FB_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB_URL_SCHEME:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_URL_SCHEME:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

    .line 103
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_WORK_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.workchat"

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_WORK_VC_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.alohaworkvc"

    goto :goto_0

    :cond_1
    const-string v0, "com.facebook.orca"

    :goto_0
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 108
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.workdev"

    goto :goto_1

    :cond_2
    const-string v0, "com.facebook.work"

    :goto_1
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->WORK_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 111
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_3

    const-string v0, "com.facebook.wakizashi"

    goto :goto_2

    :cond_3
    const-string v0, "com.facebook.katana"

    :goto_2
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 116
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_4

    const-string v0, "com.facebook.mk"

    goto :goto_3

    :cond_4
    const-string v0, "com.facebook.talk"

    :goto_3
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->TALK_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FB_USER_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB_USER_AGENT:Ljava/lang/String;

    const-string v0, "aura"

    const-string v1, "browser"

    const-string v2, "videoplayer"

    const-string v3, "adnw"

    .line 134
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->SECONDARY_PROCESSES_WITH_MULTIDEX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areAppModulesEnabled()Z
    .locals 1

    .line 146
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->ARE_APP_MODULES_ENABLED:Z

    return v0
.end method

.method public static final areDownloadableStringsEnabled()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_DOWNLOADABLE_STRINGS_ENABLED:Z

    return v0
.end method

.method public static final areStringAssetsEnabled()Z
    .locals 1

    .line 150
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_STRING_ASSETS_ENABLED:Z

    return v0
.end method

.method public static final getComponentScriptBundle()Ljava/lang/String;
    .locals 1

    .line 342
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->COMPONENT_SCRIPT_BUNDLE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getComponentScriptBundleURL()Ljava/lang/String;
    .locals 1

    .line 347
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->COMPONENT_SCRIPT_BUNDLE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCpuFilters()Ljava/lang/String;
    .locals 1

    .line 288
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->CPU_FILTERS:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFb4aAppPackageName()Ljava/lang/String;
    .locals 1

    .line 304
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final getFb4aShortName()Ljava/lang/String;
    .locals 1

    .line 328
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wakizashi"

    return-object v0

    :cond_0
    const-string v0, "katana"

    return-object v0
.end method

.method public static final getLocales()[Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->LOCALES:[Ljava/lang/String;

    return-object v0
.end method

.method public static final getMainFbAppPackageName()Ljava/lang/String;
    .locals 1

    .line 320
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isWorkBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->WORK_APP_PACKAGE_NAME:Ljava/lang/String;

    return-object v0

    .line 323
    :cond_0
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMessengerSametaskUrlScheme()Ljava/lang/String;
    .locals 1

    .line 300
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMessengerSecureUrlScheme()Ljava/lang/String;
    .locals 1

    .line 296
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMessengerUrlScheme()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_URL_SCHEME:Ljava/lang/String;

    return-object v0
.end method

.method public static final getPmaAppPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.pages.app"

    return-object v0
.end method

.method public static final getUpgradeURL()Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://ghostvr.pamplemouche.com/mobile_builds/"

    goto :goto_0

    :cond_0
    const-string v0, "https://ghostvr.pamplemouche.com/apps/companion"

    :goto_0
    return-object v0
.end method

.method public static final getVersionCode()I
    .locals 1

    .line 356
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->VERSION_CODE:I

    return v0
.end method

.method public static final getWorkAppPackageName()Ljava/lang/String;
    .locals 1

    .line 308
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->WORK_APP_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final hasBundledLayouts()Z
    .locals 1

    .line 166
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->HAS_BUNDLED_LAYOUTS:Z

    return v0
.end method

.method public static final hasCompiledJS()Z
    .locals 1

    .line 154
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->HAS_COMPILED_JS:Z

    return v0
.end method

.method public static final hasHermesBytecodeBundle()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->HAS_HERMES_BYTECODE_BUNDLE:Z

    return v0
.end method

.method public static final hasSplitResources()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->HAS_SPLIT_ARSC:Z

    return v0
.end method

.method public static final is64BitBuild()Z
    .locals 2

    .line 360
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getCpuFilters()Ljava/lang/String;

    move-result-object v0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final isAldrinBuild()Z
    .locals 1

    .line 267
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALDRIN_BUILD:Z

    return v0
.end method

.method public static final isAlohaBuildForVendor()Z
    .locals 1

    .line 217
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_BUILD_FOR_VENDOR:Z

    return v0
.end method

.method public static final isAlohaWorkVcBuild()Z
    .locals 1

    .line 250
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_WORK_VC_BUILD:Z

    return v0
.end method

.method public static final isDebugBuild()Z
    .locals 1

    .line 176
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_DEBUG_BUILD:Z

    return v0
.end method

.method public static final isExopackageBuild()Z
    .locals 1

    .line 221
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_EXOPACKAGE_BUILD:Z

    return v0
.end method

.method public static final isInternalBuild()Z
    .locals 1

    .line 207
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    return v0
.end method

.method public static final isLogReleaseBuild()Z
    .locals 1

    .line 196
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_LOG_RELEASE:Z

    return v0
.end method

.method public static final isMessengerBuild()Z
    .locals 1

    .line 258
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_MESSENGER_BUILD:Z

    return v0
.end method

.method public static final isModularExopackageEnabled()Z
    .locals 1

    .line 233
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->EXOPACKAGE_FLAGS:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNativeExopackageEnabled()Z
    .locals 1

    .line 225
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->EXOPACKAGE_FLAGS:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNewSignatureBuild()Z
    .locals 1

    .line 271
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_NEW_SIGNATURE_BUILD:Z

    return v0
.end method

.method public static final isPerfTestBuild()Z
    .locals 1

    .line 186
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_PERF_TEST:Z

    return v0
.end method

.method public static final isResourcesExopackageEnabled()Z
    .locals 1

    .line 229
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->EXOPACKAGE_FLAGS:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isTalkBuild()Z
    .locals 1

    .line 279
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_BUILD:Z

    return v0
.end method

.method public static final isTalkKindleBuild()Z
    .locals 1

    .line 275
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_KINDLE_BUILD:Z

    return v0
.end method

.method public static final isWorkBuild()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_WORK_BUILD:Z

    return v0
.end method
