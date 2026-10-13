.class public abstract Lcom/oculus/modules/codegen/SystemTooltipModule;
.super Ljava/lang/Object;
.source "SystemTooltipModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;,
        Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;,
        Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;
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
    const-class v0, Lcom/oculus/modules/codegen/SystemTooltipModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule;->MODULE_NAME:Ljava/lang/String;

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

    const-string v2, "hideSystemTooltip"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Landroid/util/Pair;

    const-string v2, "showSystemTooltip"

    const-string v3, "jj"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
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
    .line 24
    sget-object v0, Lcom/oculus/modules/codegen/SystemTooltipModule;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method protected final hideSystemTooltip()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/oculus/modules/codegen/SystemTooltipModule;->hideSystemTooltipImpl()V

    .line 46
    return-void
.end method

.method protected abstract hideSystemTooltipImpl()V
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

.method protected final showSystemTooltip(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "tooltipDefinition"    # Lorg/json/JSONObject;
    .param p2, "tooltipCoordinates"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    invoke-static {p1}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;

    move-result-object v0

    invoke-static {p2}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/modules/codegen/SystemTooltipModule;->showSystemTooltipImpl(Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;)V

    .line 49
    return-void
.end method

.method protected abstract showSystemTooltipImpl(Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;)V
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
