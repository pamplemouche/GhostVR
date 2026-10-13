.class public abstract Lcom/oculus/modules/codegen/CompanionServerModule;
.super Ljava/lang/Object;
.source "CompanionServerModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/CompanionServerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/CompanionServerModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/CompanionServerModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getNuxFlowType"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getNuxState"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getNuxStatus"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getVRReadyStatus"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getWifiSetupComplete"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setHealthAndSafetyComplete"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setOkayToReboot"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setWifiSetupComplete"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startMonitor"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/modules/codegen/CompanionServerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNuxFlowType(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$1;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 70
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->getNuxFlowTypeImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 71
    return-void
.end method

.method protected abstract getNuxFlowTypeImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getNuxState(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$2;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 89
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->getNuxStateImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 90
    return-void
.end method

.method protected abstract getNuxStateImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getNuxStatus(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 92
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$3;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 108
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->getNuxStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 109
    return-void
.end method

.method protected abstract getNuxStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getVRReadyStatus(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$4;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 127
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->getVRReadyStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 128
    return-void
.end method

.method protected abstract getVRReadyStatusImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getWifiSetupComplete(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$5;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 146
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->getWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 147
    return-void
.end method

.method protected abstract getWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final setHealthAndSafetyComplete(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 149
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$6;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 165
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->setHealthAndSafetyCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 166
    return-void
.end method

.method protected abstract setHealthAndSafetyCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setOkayToReboot(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 168
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$7;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 184
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->setOkayToRebootImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 185
    return-void
.end method

.method protected abstract setOkayToRebootImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setWifiSetupComplete(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/CompanionServerModule$8;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 203
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->setWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 204
    return-void
.end method

.method protected abstract setWifiSetupCompleteImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method protected final startMonitor(DII)V
    .locals 1
    .param p1, "period"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 206
    new-instance v0, Lcom/oculus/modules/codegen/CompanionServerModule$9;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/CompanionServerModule$9;-><init>(Lcom/oculus/modules/codegen/CompanionServerModule;II)V

    .line 221
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/CompanionServerModule;->startMonitorImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 222
    return-void
.end method

.method protected abstract startMonitorImpl(DLcom/oculus/modules/codegen/Resolver;)V
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
