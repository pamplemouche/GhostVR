.class public Lcom/facebook/common/build/config/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final CPU_FILTERS:Ljava/lang/String; = "armv7"

.field public static final DEBUG:Z = false

.field public static final FBINTERNAL_URL_SCHEME:Ljava/lang/String; = "fbinternal"

.field public static final FB_SERVICE_URL_SCHEME:Ljava/lang/String; = "fb-service"

.field public static final FB_URL_SCHEME:Ljava/lang/String; = "fb"

.field public static final FB_USER_AGENT:Ljava/lang/String; = "FB4A"

.field public static final GAMES_URL_SCHEME:Ljava/lang/String; = "fb-games"

.field public static final INSTAGRAM_URL_SCHEME:Ljava/lang/String; = "instagram"

.field public static final IS_ALDRIN:Z = false

.field public static final IS_ALOHA_BUILD_FOR_VENDOR:Z = false

.field public static final IS_ALOHA_WORK_VC:Z = false

.field public static final IS_EXOPACKAGE:Z = false

.field public static final IS_HENOSIS_ALLOWED:Z = false

.field public static final IS_INTERNAL_BUILD:Z = false

.field public static final IS_LOCAL_APP:Z = false

.field public static final IS_LOG_RELEASE:Z = false

.field public static final IS_MESSENGER:Z = false

.field public static final IS_NEW_SIGNATURE_BUILD:Z = false

.field public static final IS_PERF_TEST:Z = false

.field public static final IS_TALK_BUILD:Z = false

.field public static final IS_TALK_KINDLE:Z = false

.field public static final IS_TALK_PLAYSTORE_TEST_BUILD:Z = false

.field public static final IS_WORK:Z = false

.field public static final LOCALES:[Ljava/lang/String;

.field public static final MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String; = "fb-messenger-sametask"

.field public static final MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String; = "fb-messenger-secure"

.field public static final MESSENGER_URL_SCHEME:Ljava/lang/String; = "fb-messenger"

.field public static final PORTAL_URL_SCHEME:Ljava/lang/String; = "portal"

.field public static final TALK_URL_SCHEME:Ljava/lang/String; = "talk"

.field public static final VERSION_CODE:I = 0xc790494


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/facebook/common/build/config/BuildConfig;->LOCALES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
