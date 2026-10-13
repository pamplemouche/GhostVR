.class public Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "SystemTooltipModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/SystemTooltipModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTooltipDefinition"
.end annotation


# instance fields
.field public hostLayerName:Ljava/lang/String;

.field public position:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

.field public text:Ljava/lang/String;

.field public tooltipId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 77
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;-><init>()V

    .line 79
    .local v0, "result":Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "hostLayerName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->hostLayerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v1, "position"

    iget-object v2, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->position:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v1, "text"

    iget-object v2, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "tooltipId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->tooltipId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    const-string v0, "hostLayerName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->hostLayerName:Ljava/lang/String;

    .line 72
    const-string v0, "position"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->position:Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipPosition;

    .line 73
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->text:Ljava/lang/String;

    .line 74
    const-string v0, "tooltipId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->tooltipId:Ljava/lang/String;

    .line 75
    return-void
.end method
