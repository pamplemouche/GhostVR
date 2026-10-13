.class public Lcom/facebook/common/build/BuildConstants;
.super Ljava/lang/Object;
.source "BuildConstants.java"


# static fields
.field private static final CPU_FILTERS:Ljava/lang/String;

.field public static final FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final FBINTERNAL_URL_SCHEME:Ljava/lang/String;

.field public static final FB_SERVICE_URL_SCHEME:Ljava/lang/String;

.field public static final FB_URL_SCHEME:Ljava/lang/String;

.field public static final FB_USER_AGENT:Ljava/lang/String;

.field public static final GAMES_URL_SCHEME:Ljava/lang/String;

.field public static final INSTAGRAM_URL_SCHEME:Ljava/lang/String;

.field private static final IS_ALDRIN_BUILD:Z

.field private static final IS_ALOHA_BUILD_FOR_VENDOR:Z

.field private static final IS_ALOHA_WORK_VC_BUILD:Z

.field private static final IS_DEBUG_BUILD:Z

.field private static final IS_EXOPACKAGE_BUILD:Z

.field private static final IS_INTERNAL_BUILD:Z

.field private static final IS_LOCAL_APP_BUILD:Z

.field private static final IS_LOG_RELEASE:Z

.field private static final IS_MESSENGER_BUILD:Z

.field private static final IS_NEW_SIGNATURE_BUILD:Z

.field private static final IS_PERF_TEST:Z

.field private static final IS_TALK_BUILD:Z

.field private static final IS_TALK_KINDLE_BUILD:Z

.field private static final IS_TALK_PLAYSTORE_TEST_BUILD:Z

.field private static final IS_WORK_BUILD:Z

.field public static final MESSENGER_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

.field public static final MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

.field public static final MESSENGER_URL_SCHEME:Ljava/lang/String;

.field public static final PORTAL_URL_SCHEME:Ljava/lang/String;

.field public static final SECONDARY_PROCESSES_WITH_MULTIDEX:[Ljava/lang/String;

.field public static final TALK_APP_PACKAGE_NAME:Ljava/lang/String;

.field public static final TALK_URL_SCHEME:Ljava/lang/String;

.field public static final WORK_APP_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_INTERNAL_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    .line 19
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_NEW_SIGNATURE_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_NEW_SIGNATURE_BUILD:Z

    .line 20
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_WORK:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_WORK_BUILD:Z

    .line 21
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALOHA_WORK_VC:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_WORK_VC_BUILD:Z

    .line 22
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALOHA_BUILD_FOR_VENDOR:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_BUILD_FOR_VENDOR:Z

    .line 23
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_MESSENGER:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_MESSENGER_BUILD:Z

    .line 24
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_LOCAL_APP:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_LOCAL_APP_BUILD:Z

    .line 25
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->DEBUG:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_DEBUG_BUILD:Z

    .line 26
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_ALDRIN:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALDRIN_BUILD:Z

    .line 27
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_PERF_TEST:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_PERF_TEST:Z

    .line 28
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_LOG_RELEASE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_LOG_RELEASE:Z

    .line 29
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_TALK_PLAYSTORE_TEST_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_PLAYSTORE_TEST_BUILD:Z

    .line 31
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_TALK_KINDLE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_KINDLE_BUILD:Z

    .line 32
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_TALK_BUILD:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_TALK_BUILD:Z

    .line 33
    sget-boolean v0, Lcom/facebook/common/build/config/BuildConfig;->IS_EXOPACKAGE:Z

    sput-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_EXOPACKAGE_BUILD:Z

    .line 34
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->CPU_FILTERS:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->CPU_FILTERS:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FB_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB_URL_SCHEME:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FBINTERNAL_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FBINTERNAL_URL_SCHEME:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FB_SERVICE_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB_SERVICE_URL_SCHEME:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->GAMES_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->GAMES_URL_SCHEME:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->INSTAGRAM_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->INSTAGRAM_URL_SCHEME:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_URL_SCHEME:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->PORTAL_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->PORTAL_URL_SCHEME:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->TALK_URL_SCHEME:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->TALK_URL_SCHEME:Ljava/lang/String;

    .line 119
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_WORK_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.facebook.workchat"

    :goto_0
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->MESSENGER_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 124
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.workdev"

    :goto_1
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->WORK_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 127
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_3

    const-string v0, "com.facebook.wakizashi"

    :goto_2
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB4A_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 132
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    if-eqz v0, :cond_4

    const-string v0, "com.facebook.mk"

    :goto_3
    sput-object v0, Lcom/facebook/common/build/BuildConstants;->TALK_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/facebook/common/build/config/BuildConfig;->FB_USER_AGENT:Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->FB_USER_AGENT:Ljava/lang/String;

    .line 155
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aura"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "browser"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "adnw"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/build/BuildConstants;->SECONDARY_PROCESSES_WITH_MULTIDEX:[Ljava/lang/String;

    return-void

    .line 119
    :cond_0
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_ALOHA_WORK_VC_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.alohaworkvc"

    goto :goto_0

    :cond_1
    const-string v0, "com.facebook.orca"

    goto :goto_0

    .line 124
    :cond_2
    const-string v0, "com.facebook.work"

    goto :goto_1

    .line 127
    :cond_3
    const-string v0, "com.facebook.katana"

    goto :goto_2

    .line 132
    :cond_4
    const-string v0, "com.facebook.talk"

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCpuFilters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/facebook/common/build/BuildConstants;->CPU_FILTERS:Ljava/lang/String;

    return-object v0
.end method

.method public static final getVersionCode()I
    .locals 1

    .prologue
    .line 395
    sget v0, Lcom/facebook/common/build/config/BuildConfig;->VERSION_CODE:I

    return v0
.end method

.method public static final is64BitBuild()Z
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getCpuFilters()Ljava/lang/String;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDebugBuild()Z
    .locals 1
    .annotation build Lcom/facebook/redex/annotations/ForceInline;
    .end annotation

    .prologue
    .line 198
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_DEBUG_BUILD:Z

    return v0
.end method

.method public static final isInternalBuild()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/facebook/common/build/BuildConstants;->IS_INTERNAL_BUILD:Z

    return v0
.end method
