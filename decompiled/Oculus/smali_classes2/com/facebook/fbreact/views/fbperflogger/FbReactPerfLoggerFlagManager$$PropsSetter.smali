.class public Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager$$PropsSetter;
.super Ljava/lang/Object;
.source "FbReactPerfLoggerFlagManager$$PropsSetter.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater$ViewManagerSetter",
        "<",
        "Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;",
        "Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;",
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
    .line 26
    const-string v0, "extraData"

    const-string v1, "Map"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "flagId"

    const-string v1, "number"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public setProperty(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 22
    :goto_1
    return-void

    .line 14
    :sswitch_0
    const-string v2, "extraData"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v2, "flagId"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 16
    :pswitch_0
    check-cast p4, Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {p1, p2, p4}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->setExtraData(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 19
    :pswitch_1
    if-nez p4, :cond_1

    :goto_2
    invoke-virtual {p1, p2, v0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->setFlagId(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;I)V

    goto :goto_1

    :cond_1
    check-cast p4, Ljava/lang/Double;

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_2

    .line 14
    :sswitch_data_0
    .sparse-switch
        -0x4bd22259 -> :sswitch_1
        -0xf209026 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setProperty(Lcom/facebook/react/uimanager/ViewManager;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;

    check-cast p2, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager$$PropsSetter;->setProperty(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
