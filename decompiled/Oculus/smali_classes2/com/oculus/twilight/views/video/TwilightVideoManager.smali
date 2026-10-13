.class public Lcom/oculus/twilight/views/video/TwilightVideoManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "TwilightVideoManager.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTVideo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager",
        "<",
        "Lcom/oculus/twilight/views/video/TwilightVideoPlayer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;-><init>(Lcom/oculus/twilight/views/video/TwilightVideoManager;Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    invoke-virtual {p2, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setStateChangedListener(Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;)V

    .line 175
    return-void
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/oculus/twilight/views/video/TwilightVideoPlayer;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-direct {v0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 77
    return-object v0
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    const-string v0, "seekTo"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    const-string v0, "topVideoStateChange"

    const-string v1, "registrationName"

    const-string v2, "onStateChange"

    .line 103
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "topVideoProgress"

    const-string v3, "registrationName"

    const-string v4, "onProgress"

    .line 104
    invoke-static {v3, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "topVideoSizeDetected"

    const-string v5, "registrationName"

    const-string v6, "onVideoSizeDetected"

    .line 105
    invoke-static {v5, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 15
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    const-string v14, "State"

    const-string v0, "Idle"

    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->IDLE:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 85
    invoke-static {v1}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preparing"

    sget-object v3, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 87
    invoke-static {v3}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Ready"

    sget-object v5, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->READY:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 89
    invoke-static {v5}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Buffering"

    sget-object v7, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->BUFFERING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 91
    invoke-static {v7}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Playing"

    sget-object v9, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 93
    invoke-static {v9}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Ended"

    sget-object v11, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ENDED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 95
    invoke-static {v11}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Error"

    sget-object v13, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ERROR:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    .line 97
    invoke-static {v13}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v13

    .line 84
    invoke-static/range {v0 .. v13}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-static {v14, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "RCTVideo"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->onAfterUpdateTransaction(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->commitChanges()V

    .line 67
    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {p0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->onDropViewInstance(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->release()V

    .line 180
    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    check-cast p1, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->receiveCommand(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 18
    check-cast p1, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/twilight/views/video/TwilightVideoManager;->receiveCommand(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 118
    :pswitch_0
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    .line 119
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->seekTo(D)V

    goto :goto_0

    .line 118
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public receiveCommand(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 133
    :goto_1
    return-void

    .line 127
    :pswitch_0
    const-string v2, "seekTo"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 129
    :pswitch_1
    if-eqz p3, :cond_1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    .line 130
    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->seekTo(D)V

    goto :goto_1

    .line 129
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 127
    :pswitch_data_0
    .packed-switch -0x3603e4ed
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public resizeMode(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    .prologue
    .line 56
    const-string v0, "cover"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setScaleMode(I)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setScaleMode(I)V

    goto :goto_0
.end method

.method public startPosition(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x0
        name = "startPosition"
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setStartPosition(I)V

    .line 52
    return-void
.end method

.method public udpatePaused(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "isPaused"
    .end annotation

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->pause()V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->play()V

    goto :goto_0
.end method

.method public updateBufferSegmentNum(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bufferSegmentNum"
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public updateSource(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "src"
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setVideoUri(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public updateVolume(Lcom/oculus/twilight/views/video/TwilightVideoPlayer;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "volume"
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setVolume(F)V

    .line 42
    return-void
.end method
