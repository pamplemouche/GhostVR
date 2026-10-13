.class public abstract Lcom/oculus/modules/codegen/ConnectivityStateModule;
.super Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;
.source "ConnectivityStateModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;
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
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/ConnectivityStateModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/ConnectivityStateModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method protected static final describe()Ljava/util/List;
    .locals 1
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
    .line 31
    invoke-static {}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->describe()Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final emitOnConnectivityUpdated(Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/oculus/modules/codegen/ConnectivityStateModule;->RVRCtxTag:J

    const-string v2, "ConnectivityStateModule_onConnectivityUpdated"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/ConnectivityStateModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/modules/codegen/ConnectivityStateModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final shutdownModule()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/oculus/modules/codegen/AbstractBroadcastReceiverModule;->shutdownModule()V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/ConnectivityStateModule;->shutdownModuleImpl()V

    .line 44
    return-void
.end method

.method protected shutdownModuleImpl()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method
