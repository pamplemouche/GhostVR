.class public Lcom/oculus/twilight/views/video/OCLoopedVideoViewManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "OCLoopedVideoViewManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "OCLoopedVideo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/oculus/twilight/views/video/OCLoopedVideoView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/oculus/twilight/views/video/OCLoopedVideoView;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/oculus/twilight/views/video/OCLoopedVideoView;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;

    invoke-direct {v0, p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 48
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "OCLoopedVideo"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/oculus/twilight/views/video/OCLoopedVideoView;

    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoViewManager;->onAfterUpdateTransaction(Lcom/oculus/twilight/views/video/OCLoopedVideoView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/oculus/twilight/views/video/OCLoopedVideoView;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 37
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->commitChanges()V

    .line 38
    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/oculus/twilight/views/video/OCLoopedVideoView;

    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoViewManager;->onDropViewInstance(Lcom/oculus/twilight/views/video/OCLoopedVideoView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/oculus/twilight/views/video/OCLoopedVideoView;)V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->release()V

    .line 54
    return-void
.end method

.method public setSection(Lcom/oculus/twilight/views/video/OCLoopedVideoView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "section"
    .end annotation

    .prologue
    .line 25
    const-string v0, "startFromTime"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 26
    const-string v0, "endTime"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 27
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 28
    const-string v0, "loopFromTime"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "loopFromTime"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_0
    move-object v1, p1

    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->setSection(DDD)V

    .line 32
    return-void
.end method

.method public updateSource(Lcom/oculus/twilight/views/video/OCLoopedVideoView;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1, p2}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->setVideoUri(Ljava/lang/String;)V

    .line 21
    return-void
.end method
