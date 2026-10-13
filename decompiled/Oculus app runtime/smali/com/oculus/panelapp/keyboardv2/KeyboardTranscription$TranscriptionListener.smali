.class Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;
.super Ljava/lang/Object;
.source "KeyboardTranscription.java"

# interfaces
.implements Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscriptionListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainLooperHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;Landroid/content/Context;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->mContext:Landroid/content/Context;

    .line 21
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->mMainLooperHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAssistantResponse(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onError(Lcom/oculus/assistant/service/api/attention/AssistantErrorType;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInteractionCompleted(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInteractionPropertiesChanged(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInteractionStateChanged(Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;)Z
    .locals 1

    .line 26
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$2;->$SwitchMap$com$oculus$assistant$service$api$attention$AssistantInteractionState:[I

    invoke-virtual {p1}, Lcom/oculus/assistant/service/api/attention/AssistantInteractionState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->access$100(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-static {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->unregisterListener(Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTranscriptionChanged(Ljava/lang/String;Z)Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;->mMainLooperHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener$1;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
