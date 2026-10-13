.class Lcom/oculus/twilight/views/video/TwilightVideoManager$1;
.super Ljava/lang/Object;
.source "TwilightVideoManager.java"

# interfaces
.implements Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/twilight/views/video/TwilightVideoManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/oculus/twilight/views/video/TwilightVideoPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/twilight/views/video/TwilightVideoManager;

.field final synthetic val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field final synthetic val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/twilight/views/video/TwilightVideoManager;Lcom/oculus/twilight/views/video/TwilightVideoPlayer;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->this$0:Lcom/oculus/twilight/views/video/TwilightVideoManager;

    iput-object p2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    iput-object p3, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 4

    .prologue
    .line 153
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 154
    const-string v0, "target"

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v0, "position"

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v0, "duration"

    invoke-interface {v1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 158
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 159
    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    .line 160
    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    const-string v3, "topVideoProgress"

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 161
    return-void
.end method

.method public onStateChanged(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 143
    const-string v0, "target"

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v0, "state"

    invoke-static {p1}, Lcom/oculus/twilight/views/video/ReactVideoPlayerStateConversions;->convertToJSString(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 147
    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    .line 148
    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    const-string v3, "topVideoStateChange"

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 149
    return-void
.end method

.method public onVideoSizeDetected(II)V
    .locals 4

    .prologue
    .line 165
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 166
    const-string v0, "target"

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v0, "videoWidth"

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v0, "videoHeight"

    invoke-interface {v1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    const-class v2, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 171
    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iget-object v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoManager$1;->val$view:Lcom/oculus/twilight/views/video/TwilightVideoPlayer;

    .line 172
    invoke-virtual {v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getId()I

    move-result v2

    const-string v3, "topVideoSizeDetected"

    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 173
    return-void
.end method
