.class public abstract Lcom/oculus/modules/codegen/SleepManagerModule;
.super Ljava/lang/Object;
.source "SleepManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;
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
    .line 22
    const-class v0, Lcom/oculus/modules/codegen/SleepManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/SleepManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getSleepSettings"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setAutoSleepTime"

    const-string v3, "d"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "toggleAutoWake"

    const-string v3, "b"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final emitOnSleepSettingsUpdated(Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;)V
    .locals 4
    .param p1, "data"    # Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/oculus/modules/codegen/SleepManagerModule;->RVRCtxTag:J

    const-string v2, "SleepManagerModule_onSleepSettingsUpdated"

    invoke-virtual {p1}, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/modules/codegen/SleepManagerModule;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oculus/modules/codegen/SleepManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getSleepSettings()V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/SleepManagerModule;->getSleepSettingsImpl()V

    .line 45
    return-void
.end method

.method protected abstract getSleepSettingsImpl()V
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final setAutoSleepTime(D)V
    .locals 1
    .param p1, "sleepTime"    # D

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/oculus/modules/codegen/SleepManagerModule;->setAutoSleepTimeImpl(D)V

    .line 48
    return-void
.end method

.method protected abstract setAutoSleepTimeImpl(D)V
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected final toggleAutoWake(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/SleepManagerModule;->toggleAutoWakeImpl(Z)V

    .line 51
    return-void
.end method

.method protected abstract toggleAutoWakeImpl(Z)V
.end method
