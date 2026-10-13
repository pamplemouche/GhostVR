.class public abstract Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.super Ljava/lang/Object;
.source "DeviceEnvironmentModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;,
        Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;,
        Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;,
        Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
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
    const-class v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getDeviceEnvironmentHeaders"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "isADBEnabled"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "isUnknownSourcesEnabled"

    const-string v3, "+ii"

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
.method protected final getDeviceEnvironmentHeaders(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$1;-><init>(Lcom/oculus/modules/codegen/DeviceEnvironmentModule;II)V

    .line 63
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->getDeviceEnvironmentHeadersImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 64
    return-void
.end method

.method protected abstract getDeviceEnvironmentHeadersImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentHeadersType;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final isADBEnabled(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$2;-><init>(Lcom/oculus/modules/codegen/DeviceEnvironmentModule;II)V

    .line 82
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->isADBEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 83
    return-void
.end method

.method protected abstract isADBEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V
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

.method protected final isUnknownSourcesEnabled(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$3;-><init>(Lcom/oculus/modules/codegen/DeviceEnvironmentModule;II)V

    .line 101
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->isUnknownSourcesEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 102
    return-void
.end method

.method protected abstract isUnknownSourcesEnabledImpl(Lcom/oculus/modules/codegen/Resolver;)V
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

.method protected abstract marshallJSConstantEnvironment()Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "ENVIRONMENT"

    invoke-virtual {p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule;->marshallJSConstantEnvironment()Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$DeviceEnvironmentBlobType;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
