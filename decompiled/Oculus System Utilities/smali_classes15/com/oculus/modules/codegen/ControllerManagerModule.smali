.class public abstract Lcom/oculus/modules/codegen/ControllerManagerModule;
.super Ljava/lang/Object;
.source "ControllerManagerModule.java"


# static fields
.field protected static final MODULE_NAME:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/oculus/modules/codegen/ControllerManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/ControllerManagerModule;->MODULE_NAME:Ljava/lang/String;

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
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/modules/codegen/ControllerManagerModule;->nativeInvokeCallback(JILjava/lang/String;)V

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

    const-string v2, "getOculusButtonLongPress"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Landroid/util/Pair;

    const-string v2, "getOculusButtonMovementDetection"

    const-string v3, "+ii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setOculusButtonLongPress"

    const-string v3, "+bii"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Landroid/util/Pair;

    const-string v2, "setOculusButtonMovementDetection"

    const-string v3, "+bii"

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
.method protected final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/modules/codegen/ControllerManagerModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final getOculusButtonLongPress(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/oculus/modules/codegen/ControllerManagerModule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/ControllerManagerModule$1;-><init>(Lcom/oculus/modules/codegen/ControllerManagerModule;II)V

    .line 60
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/ControllerManagerModule;->getOculusButtonLongPressImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 61
    return-void
.end method

.method protected abstract getOculusButtonLongPressImpl(Lcom/oculus/modules/codegen/Resolver;)V
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

.method protected final getOculusButtonMovementDetection(II)V
    .locals 1
    .param p1, "resolveID"    # I
    .param p2, "rejectID"    # I

    .prologue
    .line 63
    new-instance v0, Lcom/oculus/modules/codegen/ControllerManagerModule$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/modules/codegen/ControllerManagerModule$2;-><init>(Lcom/oculus/modules/codegen/ControllerManagerModule;II)V

    .line 79
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v0}, Lcom/oculus/modules/codegen/ControllerManagerModule;->getOculusButtonMovementDetectionImpl(Lcom/oculus/modules/codegen/Resolver;)V

    .line 80
    return-void
.end method

.method protected abstract getOculusButtonMovementDetectionImpl(Lcom/oculus/modules/codegen/Resolver;)V
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
    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final setOculusButtonLongPress(ZII)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 82
    new-instance v0, Lcom/oculus/modules/codegen/ControllerManagerModule$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/ControllerManagerModule$3;-><init>(Lcom/oculus/modules/codegen/ControllerManagerModule;II)V

    .line 98
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/ControllerManagerModule;->setOculusButtonLongPressImpl(ZLcom/oculus/modules/codegen/Resolver;)V

    .line 99
    return-void
.end method

.method protected abstract setOculusButtonLongPressImpl(ZLcom/oculus/modules/codegen/Resolver;)V
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

.method protected final setOculusButtonMovementDetection(ZII)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "resolveID"    # I
    .param p3, "rejectID"    # I

    .prologue
    .line 101
    new-instance v0, Lcom/oculus/modules/codegen/ControllerManagerModule$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/modules/codegen/ControllerManagerModule$4;-><init>(Lcom/oculus/modules/codegen/ControllerManagerModule;II)V

    .line 117
    .local v0, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v0}, Lcom/oculus/modules/codegen/ControllerManagerModule;->setOculusButtonMovementDetectionImpl(ZLcom/oculus/modules/codegen/Resolver;)V

    .line 118
    return-void
.end method

.method protected abstract setOculusButtonMovementDetectionImpl(ZLcom/oculus/modules/codegen/Resolver;)V
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

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
