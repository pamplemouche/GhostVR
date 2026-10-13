.class public Lcom/oculus/modules/JSBundleModuleImpl;
.super Lcom/oculus/modules/codegen/JSBundleModule;
.source "JSBundleModuleImpl.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "OC|826037204154824|"

.field private static final BUNDLE_CONFIGURATION_API_PATH:Ljava/lang/String; = "bundle_configuration"

.field private static final BUNDLE_CONFIGURATION_KEY:Ljava/lang/String; = "bundle_configuration"

.field private static final JS_BUNDLE_EVENT_ERROR:Ljava/lang/String; = "error"

.field private static final JS_BUNDLE_EVENT_ERROR_DETAILS:Ljava/lang/String; = "error_details"

.field private static final JS_BUNDLE_EVENT_NAME:Ljava/lang/String; = "oculus_js_bundle"

.field private static final JS_BUNDLE_EVENT_STATUS:Ljava/lang/String; = "status"

.field private static final OCULUS_GRAPH_API_URL:Ljava/lang/String; = "https://ghostvr.pamplemouche.com"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/JSBundleModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oculus/modules/codegen/JSBundleModule;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/oculus/device/APIInterceptor;

    iget-object v2, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oculus/device/APIInterceptor;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/modules/JSBundleModuleImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/modules/JSBundleModuleImpl;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/modules/JSBundleModuleImpl;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/modules/JSBundleModuleImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/oculus/modules/JSBundleModuleImpl;->verifyBundleChecksum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private downloadJSBundle()Lbolts/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Continuation",
            "<",
            "Lcom/oculus/vrshell/home/JSBundle;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/oculus/modules/JSBundleModuleImpl$4;

    invoke-direct {v0, p0}, Lcom/oculus/modules/JSBundleModuleImpl$4;-><init>(Lcom/oculus/modules/JSBundleModuleImpl;)V

    return-object v0
.end method

.method private fetchJSBundleConfiguration()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/oculus/modules/JSBundleModuleImpl$2;

    invoke-direct {v0, p0}, Lcom/oculus/modules/JSBundleModuleImpl$2;-><init>(Lcom/oculus/modules/JSBundleModuleImpl;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getOverrideBundle()Lbolts/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/vrshell/home/JSBundle;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/oculus/modules/JSBundleModuleImpl$3;

    invoke-direct {v0, p0}, Lcom/oculus/modules/JSBundleModuleImpl$3;-><init>(Lcom/oculus/modules/JSBundleModuleImpl;)V

    return-object v0
.end method

.method private verifyBundleChecksum(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "checksum"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    new-instance v0, Ljava/io/File;

    const-string v2, "%s/%s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oculus/modules/JSBundleModuleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/oculus/vrshell/home/CryptoMethods;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "fileHash":Ljava/lang/String;
    sget-object v2, Lcom/oculus/modules/JSBundleModuleImpl;->TAG:Ljava/lang/String;

    const-string v3, "Comparing bundle checksum %s with computed hash %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected fetchAndApplyFirstTimeNuxBundleOverrideImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/oculus/modules/JSBundleModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "fetchAndApplyFirstTimeNuxBundleOverrideImpl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/oculus/modules/JSBundleModuleImpl;->fetchJSBundleConfiguration()Lbolts/Task;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcom/oculus/modules/JSBundleModuleImpl;->getOverrideBundle()Lbolts/Continuation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 69
    invoke-direct {p0}, Lcom/oculus/modules/JSBundleModuleImpl;->downloadJSBundle()Lbolts/Continuation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/modules/JSBundleModuleImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/modules/JSBundleModuleImpl$1;-><init>(Lcom/oculus/modules/JSBundleModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V

    .line 70
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 81
    return-void
.end method

.method protected final native nativeGetOverrideBundle(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/vrshell/home/JSBundle;
.end method
