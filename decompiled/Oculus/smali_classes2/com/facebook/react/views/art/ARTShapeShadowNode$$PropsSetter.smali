.class public Lcom/facebook/react/views/art/ARTShapeShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ARTShapeShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/art/ARTShapeShadowNode;",
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
    .line 46
    const-string v0, "d"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "fill"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "stroke"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "strokeCap"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "strokeDash"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "strokeJoin"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "strokeWidth"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/react/views/art/ARTShapeShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/art/ARTShapeShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/art/ARTShapeShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 13
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 42
    :goto_1
    return-void

    .line 13
    :sswitch_0
    const-string v3, "d"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "fill"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "opacity"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "stroke"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "strokeCap"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "strokeDash"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "strokeJoin"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "strokeWidth"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "transform"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    .line 15
    :pswitch_0
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setShapePath(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 18
    :pswitch_1
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setFill(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 21
    :pswitch_2
    if-nez p3, :cond_1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setOpacity(F)V

    goto :goto_1

    :cond_1
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_2

    .line 24
    :pswitch_3
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setStroke(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 27
    :pswitch_4
    if-nez p3, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setStrokeCap(I)V

    goto/16 :goto_1

    :cond_2
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_3

    .line 30
    :pswitch_5
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setStrokeDash(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 33
    :pswitch_6
    if-nez p3, :cond_3

    :goto_4
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setStrokeJoin(I)V

    goto/16 :goto_1

    :cond_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result v1

    goto :goto_4

    .line 36
    :pswitch_7
    if-nez p3, :cond_4

    :goto_5
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setStrokeWidth(F)V

    goto/16 :goto_1

    :cond_4
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_5

    .line 39
    :pswitch_8
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTShapeShadowNode;->setTransform(Lcom/facebook/react/bridge/ReadableArray;)V

    goto/16 :goto_1

    .line 13
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_2
        -0x352a89c8 -> :sswitch_3
        -0x25a00216 -> :sswitch_5
        -0x259d147e -> :sswitch_6
        -0x136b986 -> :sswitch_4
        0x64 -> :sswitch_0
        0x2ff583 -> :sswitch_1
        0x3ebe6b6c -> :sswitch_8
        0x72aeea6e -> :sswitch_7
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
    .end packed-switch
.end method
