.class public abstract Lcom/oculus/modules/codegen/NightShiftManagerModule;
.super Ljava/lang/Object;
.source "NightShiftManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;
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
    const-class v0, Lcom/oculus/modules/codegen/NightShiftManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/NightShiftManagerModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getNightShiftSettings"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNightShiftActive"

    const-string v3, "+bii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNightShiftAutoMode"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNightShiftEndTime"

    const-string v3, "+dii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setNightShiftStartTime"

    const-string v3, "+dii"

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
.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/modules/codegen/NightShiftManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNightShiftSettings(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/NightShiftManagerModule$1;-><init>(Lcom/oculus/modules/codegen/NightShiftManagerModule;II)V

    .line 63
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->getNightShiftSettingsImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 64
    return-void
.end method

.method protected abstract getNightShiftSettingsImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;",
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

.method protected final setNightShiftActive(ZII)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/NightShiftManagerModule$2;-><init>(Lcom/oculus/modules/codegen/NightShiftManagerModule;II)V

    .line 82
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->setNightShiftActiveImpl(ZLcom/oculus/modules/codegen/Resolver;)V

    .line 83
    return-void
.end method

.method protected abstract setNightShiftActiveImpl(ZLcom/oculus/modules/codegen/Resolver;)V
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

.method protected final setNightShiftAutoMode(DII)V
    .locals 1
    .param p1, "mode"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/NightShiftManagerModule$3;-><init>(Lcom/oculus/modules/codegen/NightShiftManagerModule;II)V

    .line 101
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->setNightShiftAutoModeImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 102
    return-void
.end method

.method protected abstract setNightShiftAutoModeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setNightShiftEndTime(DII)V
    .locals 1
    .param p1, "time"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$4;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/NightShiftManagerModule$4;-><init>(Lcom/oculus/modules/codegen/NightShiftManagerModule;II)V

    .line 120
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->setNightShiftEndTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 121
    return-void
.end method

.method protected abstract setNightShiftEndTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setNightShiftStartTime(DII)V
    .locals 1
    .param p1, "time"    # D
    .param p3, "resolveID"    # I
    .param p4, "rejectID"    # I

    .prologue
    .line 123
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$5;

    invoke-direct {v0, p0, p3, p4}, Lcom/oculus/modules/codegen/NightShiftManagerModule$5;-><init>(Lcom/oculus/modules/codegen/NightShiftManagerModule;II)V

    .line 139
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule;->setNightShiftStartTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V

    .line 140
    return-void
.end method

.method protected abstract setNightShiftStartTimeImpl(DLcom/oculus/modules/codegen/Resolver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
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
    .line 141
    return-void
.end method
