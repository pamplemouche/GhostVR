.class public abstract Lcom/oculus/modules/codegen/BatteryManagerModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "BatteryManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;,
        Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
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
    .line 25
    const-class v0, Lcom/oculus/modules/codegen/BatteryManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/BatteryManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(JILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/BatteryManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

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
    .line 33
    invoke-static {}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->describe()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getLowPowerModeAsync"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setLowPowerMode"

    const-string v3, "+bii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final emitOnBatterySaverUpdated(Z)V
    .locals 4
    .param p1, "data"    # Z

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule;->RVRCtxTag:J

    const-string v2, "BatteryManagerModule_onBatterySaverUpdated"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/BatteryManagerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected final emitOnBatteryUpdated(Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule;->RVRCtxTag:J

    const-string v2, "BatteryManagerModule_onBatteryUpdated"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/BatteryManagerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected final getLowPowerModeAsync(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/modules/codegen/BatteryManagerModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/BatteryManagerModule$1;-><init>(Lcom/oculus/modules/codegen/BatteryManagerModule;II)V

    .line 67
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/BatteryManagerModule;->getLowPowerModeAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 68
    return-void
.end method

.method protected abstract getLowPowerModeAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oculus/modules/codegen/BatteryManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final setLowPowerMode(ZII)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/oculus/modules/codegen/BatteryManagerModule$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/BatteryManagerModule$2;-><init>(Lcom/oculus/modules/codegen/BatteryManagerModule;II)V

    .line 86
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/BatteryManagerModule;->setLowPowerModeImpl(ZLcom/oculus/modules/codegen/Resolver;)V

    .line 87
    return-void
.end method

.method protected abstract setLowPowerModeImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public final shutdownModule()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->shutdownModule()V

    .line 90
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/BatteryManagerModule;->shutdownModuleImpl()V

    .line 91
    return-void
.end method

.method protected shutdownModuleImpl()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
