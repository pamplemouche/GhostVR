.class public Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;
.super Ljava/lang/Object;
.source "CoreAppAccessTokenFetcherModule.java"


# static fields
.field private static final CORE_APP_ID:Ljava/lang/String; = "1880592348624904"

.field private static final MAJOR_VERSION:I = 0x1

.field private static final MINOR_VERSION:I = 0x11

.field private static final MODULE_NAME:Ljava/lang/String; = "CoreAppAccessTokenFetcher"

.field private static final SERVICE_COMPONENT:Ljava/lang/String; = "com.oculus.horizon.service.OVRService"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.oculus.horizon"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;->generateArgsBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getToken"

    const-string v3, "ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method private static generateArgsBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "sdk_major_version"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "sdk_minor_version"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v1, "app_id"

    const-string v2, "1880592348624904"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "request_core_app_token"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "CoreAppAccessTokenFetcher"

    return-object v0
.end method

.method public getToken(II)V
    .locals 2
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/platform/CoreAppAccessTokenFetcherModule$1;-><init>(Lcom/oculus/platform/CoreAppAccessTokenFetcherModule;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    return-void
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
