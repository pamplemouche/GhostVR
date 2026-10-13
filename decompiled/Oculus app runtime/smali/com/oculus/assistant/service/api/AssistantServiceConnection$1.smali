.class Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;
.super Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;
.source "AssistantServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/assistant/service/api/AssistantServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;


# direct methods
.method constructor <init>(Lcom/oculus/assistant/service/api/AssistantServiceConnection;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-direct {p0}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAssistantResponse$3(Ljava/lang/String;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 91
    invoke-interface {p1, p0}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onAssistantResponse(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onError$5(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 101
    invoke-interface {p1, p0}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onError(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onInteractionCompleted$4(ZLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 96
    invoke-interface {p1, p0}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onInteractionCompleted(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onInteractionPropertiesChanged$1(FLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onInteractionPropertiesChanged(F)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onInteractionStateChanged$0(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 73
    invoke-interface {p1, p0}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onInteractionStateChanged(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onTranscriptionChanged$2(Ljava/lang/String;ZLcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)Z
    .locals 0

    .line 86
    invoke-interface {p2, p0, p1}, Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;->onTranscriptionChanged(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onAssistantResponse(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$sZJPf2SMMCY65ueUWLyHn6IZFxU;

    invoke-direct {v1, p1}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$sZJPf2SMMCY65ueUWLyHn6IZFxU;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method

.method public onError(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$BRa2JovmoVw6SfHhERKq8pVXE8s;

    invoke-direct {v1, p1}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$BRa2JovmoVw6SfHhERKq8pVXE8s;-><init>(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method

.method public onInteractionCompleted(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$OdxV3IVeP_IqgnwSbCUmsLQXaqQ;

    invoke-direct {v1, p1}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$OdxV3IVeP_IqgnwSbCUmsLQXaqQ;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method

.method public onInteractionPropertiesChanged(F)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$jPxenqOyb0t3JP81w92wwRTTBJk;

    invoke-direct {v1, p1}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$jPxenqOyb0t3JP81w92wwRTTBJk;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method

.method public onInteractionStateChanged(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$2;->$SwitchMap$com$oculus$assistant$service$api$attention$AssistantInteractionState:[I

    invoke-virtual {p1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-static {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->access$102(Lcom/oculus/assistant/service/api/AssistantServiceConnection;Z)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->access$102(Lcom/oculus/assistant/service/api/AssistantServiceConnection;Z)Z

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$4xDxGX45bk27n5UO6sF2L1ASgYo;

    invoke-direct {v1, p1}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$4xDxGX45bk27n5UO6sF2L1ASgYo;-><init>(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method

.method public onTranscriptionChanged(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;->this$0:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v0, v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    new-instance v1, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;

    invoke-direct {v1, p1, p2}, Lcom/oculus/assistant/service/api/-$$Lambda$AssistantServiceConnection$1$fN1aJSXijjOHvOeXMzbn5b3j_LM;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->fire(Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;)Z

    move-result p1

    return p1
.end method
