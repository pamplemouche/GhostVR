.class public Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;
.super Lcom/facebook/react/uimanager/ViewManager;
.source "FbReactPerfLoggerFlagManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReactPerformanceLoggerFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewManager",
        "<",
        "Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;",
        "Lcom/facebook/react/uimanager/ReactShadowNodeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;


# direct methods
.method public constructor <init>(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewManager;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNodeImpl;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    move-result-object v0

    return-object v0
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;
    .locals 4

    .prologue
    const-wide/16 v2, 0x2000

    .line 33
    const-string v0, "FbReactPerfLoggerFlag.OnCreate"

    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 35
    :try_start_0
    new-instance v0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    iget-object v1, p0, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->mAfterDrawListener:Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;

    invoke-direct {v0, p1, v1}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;-><init>(Landroid/content/Context;Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag$AfterDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "ReactPerformanceLoggerFlag"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/react/uimanager/ReactShadowNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/facebook/react/uimanager/ReactShadowNodeImpl;

    return-object v0
.end method

.method public setExtraData(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "extraData"
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1, p2}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->setExtraData(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 57
    return-void
.end method

.method public setFlagId(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "flagId"
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1, p2}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;->setFlagId(I)V

    .line 62
    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlagManager;->updateExtraData(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/fbreact/views/fbperflogger/FbReactPerfLoggerFlag;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
