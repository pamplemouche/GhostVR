.class public Lcom/oculus/modules/SystemTooltipModuleImpl;
.super Lcom/oculus/modules/codegen/SystemTooltipModule;
.source "SystemTooltipModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/modules/SystemTooltipModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/SystemTooltipModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/modules/codegen/SystemTooltipModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected hideSystemTooltipImpl()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/modules/SystemTooltipModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "::hideSystemTooltipImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/oculus/panellib/ShellIPC;->tooltipHide()V

    .line 50
    return-void
.end method

.method protected showSystemTooltipImpl(Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;)V
    .locals 7
    .param p1, "tooltipDefinition"    # Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;
    .param p2, "tooltipCoordinates"    # Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;

    .prologue
    .line 24
    sget-object v5, Lcom/oculus/modules/SystemTooltipModuleImpl;->TAG:Ljava/lang/String;

    const-string v6, "::showSystemTooltipImpl"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipDefinition;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    .local v1, "tooltipConfigurationJson":Lorg/json/JSONObject;
    invoke-virtual {p2}, Lcom/oculus/modules/codegen/SystemTooltipModule$SystemTooltipUVCoordinates;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 31
    .local v4, "tooltipCoordinatesJson":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    .local v3, "tooltipCoordinateKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    .local v2, "tooltipCoordinateKey":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 34
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "tooltipConfigurationJson":Lorg/json/JSONObject;
    .end local v2    # "tooltipCoordinateKey":Ljava/lang/String;
    .end local v3    # "tooltipCoordinateKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "tooltipCoordinatesJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v5, Lcom/oculus/modules/SystemTooltipModuleImpl;->TAG:Ljava/lang/String;

    const-string v6, "Unable to create system tooltip configuration."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v0    # "jsonException":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 39
    .restart local v1    # "tooltipConfigurationJson":Lorg/json/JSONObject;
    .restart local v3    # "tooltipCoordinateKeyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "tooltipCoordinatesJson":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/oculus/panellib/ShellIPC;->tooltipShow(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
