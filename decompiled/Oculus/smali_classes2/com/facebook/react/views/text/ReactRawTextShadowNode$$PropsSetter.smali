.class public Lcom/facebook/react/views/text/ReactRawTextShadowNode$$PropsSetter;
.super Ljava/lang/Object;
.source "ReactRawTextShadowNode$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ShadowNodeSetter",
        "<",
        "Lcom/facebook/react/views/text/ReactRawTextShadowNode;",
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
    .line 22
    const-string v0, "text"

    const-string v1, "String"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ReactShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/react/views/text/ReactRawTextShadowNode;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactRawTextShadowNode$$PropsSetter;->setProperty(Lcom/facebook/react/views/text/ReactRawTextShadowNode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Lcom/facebook/react/views/text/ReactRawTextShadowNode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 13
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 18
    :goto_1
    return-void

    .line 13
    :pswitch_0
    const-string v1, "text"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :pswitch_1
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/facebook/react/views/text/ReactRawTextShadowNode;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :pswitch_data_0
    .packed-switch 0x36452d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
