.class public abstract Lcom/oculus/modules/codegen/VolumeModule;
.super Ljava/lang/Object;
.source "VolumeModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/VolumeModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/VolumeModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/VolumeModule;->nativeInvokeCallback(JILjava/lang/String;)V

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
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getVolume"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setVolume"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startReceiver"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "stopReceiver"

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
.method protected final emitOnVolumeUpdated(D)V
    .locals 5
    .param p1, "data"    # D

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/oculus/modules/codegen/VolumeModule;->RVRCtxTag:J

    const-string v2, "VolumeModule_onVolumeUpdated"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/VolumeModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/modules/codegen/VolumeModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getVolume(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/modules/codegen/VolumeModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/VolumeModule$1;-><init>(Lcom/oculus/modules/codegen/VolumeModule;II)V

    .line 63
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/VolumeModule;->getVolumeImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 64
    return-void
.end method

.method protected abstract getVolumeImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final setVolume(DII)V
    .locals 1
    .param p1, "ratio"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/oculus/modules/codegen/VolumeModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/VolumeModule$2;-><init>(Lcom/oculus/modules/codegen/VolumeModule;II)V

    .line 81
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/VolumeModule;->setVolumeImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 82
    return-void
.end method

.method protected abstract setVolumeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
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
    .line 89
    return-void
.end method

.method protected final startReceiver()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/VolumeModule;->startReceiverImpl()V

    .line 85
    return-void
.end method

.method protected abstract startReceiverImpl()V
.end method

.method protected final stopReceiver()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/VolumeModule;->stopReceiverImpl()V

    .line 88
    return-void
.end method

.method protected abstract stopReceiverImpl()V
.end method
