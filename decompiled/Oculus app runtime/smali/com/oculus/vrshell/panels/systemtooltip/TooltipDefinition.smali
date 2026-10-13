.class public final Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;
.super Ljava/lang/Object;
.source "TooltipDefinition.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOOLTIP_HOST_LAYER_NAME_KEY:Ljava/lang/String; = "hostLayerName"

.field public static final TOOLTIP_HOST_LAYER_U_COORDINATE_KEY:Ljava/lang/String; = "hostLayerUCoordinate"

.field public static final TOOLTIP_HOST_LAYER_V_COORDINATE_KEY:Ljava/lang/String; = "hostLayerVCoordinate"

.field public static final TOOLTIP_ID_KEY:Ljava/lang/String; = "tooltipId"

.field public static final TOOLTIP_POSITION_KEY:Ljava/lang/String; = "position"

.field public static final TOOLTIP_TEXT_KEY:Ljava/lang/String; = "text"


# instance fields
.field private final mHostLayerName:Ljava/lang/String;

.field private final mTooltipId:Ljava/lang/String;

.field private final mTooltipPosition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

.field private mTooltipText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mHostLayerName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipText:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipPosition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 31
    iput-object p4, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHostLayerName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mHostLayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getTooltipConfigurationJson(Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)Ljava/lang/String;
    .locals 4

    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tooltipId"

    .line 37
    iget-object v2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text"

    .line 38
    iget-object v2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "position"

    .line 39
    iget-object v2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipPosition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    invoke-virtual {v2}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->getIPCString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hostLayerName"

    .line 40
    iget-object v2, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mHostLayerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hostLayerUCoordinate"

    .line 41
    iget v2, p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->U:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "hostLayerVCoordinate"

    .line 42
    iget p1, p1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->V:F

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    sget-object v0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get tooltip configuration JSON."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    return-object p1
.end method

.method public getTooltipId()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipId:Ljava/lang/String;

    return-object v0
.end method

.method public getTooltipPosition()Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipPosition:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipText:Ljava/lang/String;

    return-object v0
.end method

.method public setTooltipText(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;->mTooltipText:Ljava/lang/String;

    return-void
.end method
