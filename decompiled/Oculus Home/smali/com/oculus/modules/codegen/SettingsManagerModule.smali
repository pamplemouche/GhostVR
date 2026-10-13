.class public abstract Lcom/oculus/modules/codegen/SettingsManagerModule;
.super Ljava/lang/Object;
.source "SettingsManagerModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/SettingsManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/SettingsManagerModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/SettingsManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getBoolean"

    const-string v3, "+sbii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getDouble"

    const-string v3, "+sdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getFloat"

    const-string v3, "+sdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getInt"

    const-string v3, "+sdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getLong"

    const-string v3, "+sdii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getString"

    const-string v3, "+ssii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-object v0
.end method

.method private static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method private static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method protected final getBoolean(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$1;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/SettingsManagerModule$1;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 64
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getBooleanImpl(Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V

    .line 65
    return-void
.end method

.method protected abstract getBooleanImpl(Ljava/lang/String;ZLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getDouble(Ljava/lang/String;DII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 67
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$2;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/SettingsManagerModule$2;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 83
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getDoubleImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V

    .line 84
    return-void
.end method

.method protected abstract getDoubleImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getFloat(Ljava/lang/String;DII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 86
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$3;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/SettingsManagerModule$3;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 102
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getFloatImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V

    .line 103
    return-void
.end method

.method protected abstract getFloatImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getInt(Ljava/lang/String;DII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 105
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$4;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/SettingsManagerModule$4;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 121
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getIntImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V

    .line 122
    return-void
.end method

.method protected abstract getIntImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final getLong(Ljava/lang/String;DII)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .param p4, "resolveID"    # I
    .param p5, "rejectID"    # I

    .prologue
    .line 124
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$5;

    invoke-direct {v0, p0, p4, p5}, Lcom/oculus/modules/codegen/SettingsManagerModule$5;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 140
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Double;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getLongImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V

    .line 141
    return-void
.end method

.method protected abstract getLongImpl(Ljava/lang/String;DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 25
    sget-object v0, Lcom/oculus/modules/codegen/SettingsManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getString(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 143
    new-instance v0, Lcom/oculus/modules/codegen/SettingsManagerModule$6;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/SettingsManagerModule$6;-><init>(Lcom/oculus/modules/codegen/SettingsManagerModule;II)V

    .line 159
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/SettingsManagerModule;->getStringImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V

    .line 160
    return-void
.end method

.method protected abstract getStringImpl(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final marshallJSConstants()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method
