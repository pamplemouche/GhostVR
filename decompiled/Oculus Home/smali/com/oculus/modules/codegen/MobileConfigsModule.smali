.class public abstract Lcom/oculus/modules/codegen/MobileConfigsModule;
.super Ljava/lang/Object;
.source "MobileConfigsModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
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
    const-class v0, Lcom/oculus/modules/codegen/MobileConfigsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/MobileConfigsModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/MobileConfigsModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getBool"

    const-string v3, "+jbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getBoolWithoutLoggingExposure"

    const-string v3, "+jbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getDouble"

    const-string v3, "+jdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getDoubleWithoutLoggingExposure"

    const-string v3, "+jdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getInt"

    const-string v3, "+jdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getIntWithoutLoggingExposure"

    const-string v3, "+jdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getString"

    const-string v3, "+jsii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getStringWithoutLoggingExposure"

    const-string v3, "+jsii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Landroid/util/Pair;

    const-string v2, "logExposure"

    const-string v3, "j"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Landroid/util/Pair;

    const-string v2, "updateMCs"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final getBool(Lorg/json/JSONObject;ZII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 57
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/MobileConfigsModule$1;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 73
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getBoolImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V

    .line 74
    return-void
.end method

.method protected abstract getBoolImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getBoolWithoutLoggingExposure(Lorg/json/JSONObject;ZII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 76
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$2;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/MobileConfigsModule$2;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 92
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getBoolWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V

    .line 93
    return-void
.end method

.method protected abstract getBoolWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;ZLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getDouble(Lorg/json/JSONObject;DII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$3;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/MobileConfigsModule$3;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 111
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getDoubleImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V

    .line 112
    return-void
.end method

.method protected abstract getDoubleImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getDoubleWithoutLoggingExposure(Lorg/json/JSONObject;DII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 114
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$4;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/MobileConfigsModule$4;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 130
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getDoubleWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V

    .line 131
    return-void
.end method

.method protected abstract getDoubleWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getInt(Lorg/json/JSONObject;DII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 133
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$5;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/MobileConfigsModule$5;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 149
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getIntImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V

    .line 150
    return-void
.end method

.method protected abstract getIntImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getIntWithoutLoggingExposure(Lorg/json/JSONObject;DII)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$6;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/MobileConfigsModule$6;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 168
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getIntWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V

    .line 169
    return-void
.end method

.method protected abstract getIntWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/MobileConfigsModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getString(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$7;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/MobileConfigsModule$7;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 187
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getStringImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 188
    return-void
.end method

.method protected abstract getStringImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getStringWithoutLoggingExposure(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 2
    .param p1, "param"    # Lorg/json/JSONObject;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$8;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/MobileConfigsModule$8;-><init>(Lcom/oculus/modules/codegen/MobileConfigsModule;II)V

    .line 206
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->getStringWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 207
    return-void
.end method

.method protected abstract getStringWithoutLoggingExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final logExposure(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 209
    invoke-static {p1}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/MobileConfigsModule;->logExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)V

    .line 210
    return-void
.end method

.method protected abstract logExposureImpl(Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;)V
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected final updateMCs(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/oculus/modules/codegen/MobileConfigsModule;->updateMCsImpl(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method protected abstract updateMCsImpl(Ljava/lang/String;)V
.end method
