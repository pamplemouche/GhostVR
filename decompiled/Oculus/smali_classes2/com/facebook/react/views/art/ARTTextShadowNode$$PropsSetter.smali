.class public Lcom/facebook/react/views/art/ARTTextShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ARTTextShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/art/ARTTextShadowNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "alignment"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "d"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "fill"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "frame"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "stroke"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "strokeCap"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "strokeDash"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "strokeJoin"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "strokeWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/react/views/art/ARTTextShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/art/ARTTextShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/art/ARTTextShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 13
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 48
    :goto_1
    return-void

    .line 13
    :sswitch_0
    const-string v4, "alignment"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "d"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "fill"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "frame"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "opacity"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "stroke"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "strokeCap"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "strokeDash"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "strokeJoin"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v4, "strokeWidth"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v4, "transform"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    .line 15
    :pswitch_0
    if-nez p3, :cond_1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setAlignment(I)V

    goto :goto_1

    :cond_1
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_2

    .line 18
    :pswitch_1
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setShapePath(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 21
    :pswitch_2
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setFill(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 24
    :pswitch_3
    check-cast p3, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setFrame(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_1

    .line 27
    :pswitch_4
    if-nez p3, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setOpacity(F)V

    goto/16 :goto_1

    :cond_2
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_3

    .line 30
    :pswitch_5
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setStroke(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 33
    :pswitch_6
    if-nez p3, :cond_3

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setStrokeCap(I)V

    goto/16 :goto_1

    :cond_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_4

    .line 36
    :pswitch_7
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setStrokeDash(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 39
    :pswitch_8
    if-nez p3, :cond_4

    :goto_5
    invoke-virtual {p1, v2}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setStrokeJoin(I)V

    goto/16 :goto_1

    :cond_4
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_5

    .line 42
    :pswitch_9
    if-nez p3, :cond_5

    :goto_6
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setStrokeWidth(F)V

    goto/16 :goto_1

    :cond_5
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v1

    goto :goto_6

    .line 45
    :pswitch_a
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTTextShadowNode;->setTransform(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 13
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_4
        -0x352a89c8 -> :sswitch_5
        -0x25a00216 -> :sswitch_7
        -0x259d147e -> :sswitch_8
        -0x136b986 -> :sswitch_6
        0x64 -> :sswitch_1
        0x2ff583 -> :sswitch_2
        0x5d2a96d -> :sswitch_3
        0x3ebe6b6c -> :sswitch_a
        0x695fa1e3 -> :sswitch_0
        0x72aeea6e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
