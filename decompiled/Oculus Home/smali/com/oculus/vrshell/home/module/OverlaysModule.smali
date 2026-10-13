.class public Lcom/oculus/vrshell/home/module/OverlaysModule;
.super Ljava/lang/Object;
.source "OverlaysModule.java"


# static fields
.field private static MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/vrshell/home/module/OverlaysModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/OverlaysModule;->MODULE_NAME:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/oculus/vrshell/home/module/OverlaysModule;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/oculus/vrshell/home/module/OverlaysModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/module/OverlaysModule;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/OverlaysModule;->mContext:Landroid/content/Context;

    .line 27
    return-void
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
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "blockBackgroundInput"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Landroid/util/Pair;

    const-string v2, "unblockBackgroundInput"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v1, Landroid/util/Pair;

    const-string v2, "flushAnalytics"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public blockBackgroundInput(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputBlockingType"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/OverlaysModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oculus/vrshell/home/OverlaysInputBlocker;->startBlockingInput(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public flushAnalytics()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/oculus/vrshell/home/HomeApplication;->flushAnalytics()V

    .line 49
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/vrshell/home/module/OverlaysModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public unblockBackgroundInput()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/OverlaysModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/vrshell/home/OverlaysInputBlocker;->stopBlockingInput(Landroid/content/Context;)V

    .line 44
    return-void
.end method
