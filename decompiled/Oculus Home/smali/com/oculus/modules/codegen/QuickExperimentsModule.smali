.class public abstract Lcom/oculus/modules/codegen/QuickExperimentsModule;
.super Ljava/lang/Object;
.source "QuickExperimentsModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;,
        Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
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
    const-class v0, Lcom/oculus/modules/codegen/QuickExperimentsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/QuickExperimentsModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/QuickExperimentsModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getCachedQEs"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "override"

    const-string v3, "+sjii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "remoteFetchQEs"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "removeOverride"

    const-string v3, "+sii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final getCachedQEs(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/oculus/modules/codegen/QuickExperimentsModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/QuickExperimentsModule$1;-><init>(Lcom/oculus/modules/codegen/QuickExperimentsModule;II)V

    .line 61
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule;->getCachedQEsImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 62
    return-void
.end method

.method protected abstract getCachedQEsImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/QuickExperimentsModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final override(Ljava/lang/String;Lorg/json/JSONObject;II)V
    .locals 1
    .param p1, "universeName"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 64
    new-instance v0, Lcom/oculus/modules/codegen/QuickExperimentsModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/QuickExperimentsModule$2;-><init>(Lcom/oculus/modules/codegen/QuickExperimentsModule;II)V

    .line 79
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule;->overrideImpl(Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/modules/codegen/Resolver;)V

    .line 80
    return-void
.end method

.method protected abstract overrideImpl(Ljava/lang/String;Lorg/json/JSONObject;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final remoteFetchQEs(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/QuickExperimentsModule;->remoteFetchQEsImpl(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected abstract remoteFetchQEsImpl(Ljava/lang/String;)V
.end method

.method protected final removeOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "universeName"    # Ljava/lang/String;
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/oculus/modules/codegen/QuickExperimentsModule$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/QuickExperimentsModule$3;-><init>(Lcom/oculus/modules/codegen/QuickExperimentsModule;II)V

    .line 100
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule;->removeOverrideImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 101
    return-void
.end method

.method protected abstract removeOverrideImpl(Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method
