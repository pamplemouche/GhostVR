.class public Lcom/facebook/common/build/config/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ARE_APP_MODULES_ENABLED:Z = false

.field public static final COMPONENT_SCRIPT_BUNDLE:Ljava/lang/String; = "ComponentScriptBundle"

.field public static final COMPONENT_SCRIPT_BUNDLE_URL:Ljava/lang/String; = "ComponentScript/ComponentScriptBundle"

.field public static final CPU_FILTERS:Ljava/lang/String;

.field public static final DEBUG:Z = false

.field public static final EXOPACKAGE_FLAGS:I = 0x0

.field public static final FBINTERNAL_URL_SCHEME:Ljava/lang/String; = "fbinternal"

.field public static final FB_SERVICE_URL_SCHEME:Ljava/lang/String; = "fb-service"

.field public static final FB_URL_SCHEME:Ljava/lang/String; = "fb"

.field public static final FB_USER_AGENT:Ljava/lang/String; = "FB4A"

.field public static final GAMES_URL_SCHEME:Ljava/lang/String; = "fb-games"

.field public static final HAS_BUNDLED_LAYOUTS:Z = false

.field public static final HAS_COMPILED_JS:Z = false

.field public static final HAS_HERMES_BYTECODE_BUNDLE:Z = false

.field public static final HAS_SPLIT_ARSC:Z = false

.field public static final INSTAGRAM_URL_SCHEME:Ljava/lang/String; = "instagram"

.field public static final IS_ALDRIN:Z = false

.field public static final IS_ALOHA_BUILD_FOR_VENDOR:Z = false

.field public static final IS_ALOHA_WORK_VC:Z = false

.field public static final IS_DOWNLOADABLE_STRINGS_ENABLED:Z = false

.field public static final IS_EXOPACKAGE:Z = false

.field public static final IS_GROUPS_REACT:Z = false

.field public static final IS_HENOSIS_ALLOWED:Z = false

.field public static final IS_INTERNAL_BUILD:Z = true

.field public static final IS_LOCAL_APP:Z = false

.field public static final IS_LOG_RELEASE:Z = false

.field public static final IS_MESSENGER:Z = false

.field public static final IS_MESSENGER_PLAYSTORE_TEST_BUILD:Z = false

.field public static final IS_NEW_SIGNATURE_BUILD:Z = false

.field public static final IS_PERF_TEST:Z = false

.field public static final IS_STRING_ASSETS_ENABLED:Z = false

.field public static final IS_TALK_BUILD:Z = false

.field public static final IS_TALK_KINDLE:Z = false

.field public static final IS_TALK_PLAYSTORE_TEST_BUILD:Z = false

.field public static final IS_WORK:Z = false

.field public static final KEYSTORE_TYPE:Ljava/lang/String; = ""

.field public static final LOCALES:[Ljava/lang/String;

.field public static final MESSENGER_SAMETASK_URL_SCHEME:Ljava/lang/String; = "fb-messenger-sametask"

.field public static final MESSENGER_SECURE_URL_SCHEME:Ljava/lang/String; = "fb-messenger-secure"

.field public static final MESSENGER_URL_SCHEME:Ljava/lang/String; = "fb-messenger"

.field public static final PORTAL_URL_SCHEME:Ljava/lang/String; = "portal"

.field public static final TALK_URL_SCHEME:Ljava/lang/String; = "talk"

.field public static final VERSION_CODE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/build/config/BuildConfig;->CPU_FILTERS:Ljava/lang/String;

    .line 36
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
