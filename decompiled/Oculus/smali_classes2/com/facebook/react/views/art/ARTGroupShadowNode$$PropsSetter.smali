.class public Lcom/facebook/react/views/art/ARTGroupShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ARTGroupShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/art/ARTGroupShadowNode;",
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
    .line 28
    const-string v0, "clipping"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "opacity"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "transform"

    const-string v1, "Array"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/react/views/art/ARTGroupShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/art/ARTGroupShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/art/ARTGroupShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/art/ARTGroupShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 13
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 24
    :goto_1
    return-void

    .line 13
    :sswitch_0
    const-string v1, "clipping"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "opacity"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "transform"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 15
    :pswitch_0
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTGroupShadowNode;->setClipping(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 18
    :pswitch_1
    if-nez p3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {p1, v0}, Lcom/facebook/react/views/art/ARTGroupShadowNode;->setOpacity(F)V

    goto :goto_1

    :cond_1
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_2

    .line 21
    :pswitch_2
    check-cast p3, Lcom/facebook/react/bridge/ReadableArray;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/art/ARTGroupShadowNode;->setTransform(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 13
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_1
        0x36c0fcc2 -> :sswitch_0
        0x3ebe6b6c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
