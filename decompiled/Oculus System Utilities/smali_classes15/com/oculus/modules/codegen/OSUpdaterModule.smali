.class public abstract Lcom/oculus/modules/codegen/OSUpdaterModule;
.super Ljava/lang/Object;
.source "OSUpdaterModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;,
        Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;
    }
.end annotation


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/modules/codegen/OSUpdaterModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/OSUpdaterModule;->nativeInvokeCallback(JILjava/lang/String;)V

    return-void
.end method

.method protected static final describe()Ljava/util/List;
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
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "checkIfUpdatesAreAvailable"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "downloadUpdateIfAvailable"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "rebootAndApplyUpdate"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final checkIfUpdatesAreAvailable(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/OSUpdaterModule$1;-><init>(Lcom/oculus/modules/codegen/OSUpdaterModule;II)V

    .line 69
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/OSUpdaterModule;->checkIfUpdatesAreAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 70
    return-void
.end method

.method protected abstract checkIfUpdatesAreAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final downloadUpdateIfAvailable(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 72
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/OSUpdaterModule$2;-><init>(Lcom/oculus/modules/codegen/OSUpdaterModule;II)V

    .line 88
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/OSUpdaterModule;->downloadUpdateIfAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 89
    return-void
.end method

.method protected abstract downloadUpdateIfAvailableImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/OSUpdaterModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final rebootAndApplyUpdate()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/OSUpdaterModule;->rebootAndApplyUpdateImpl()V

    .line 92
    return-void
.end method

.method protected abstract rebootAndApplyUpdateImpl()V
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method
