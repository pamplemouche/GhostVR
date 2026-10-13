.class public Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;
.super Ljava/lang/Object;
.source "KeyboardTranscription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;
    }
.end annotation


# instance fields
.field private final mKeyboardPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

.field private mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

.field private final mTranscriptionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$1;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    .line 82
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mKeyboardPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    .line 83
    new-instance v0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mTranscriptionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mTranscriptionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mKeyboardPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    return-object p0
.end method


# virtual methods
.method public startTranscription()V
    .locals 2

    const-string v0, "AssistantKT"

    const-string v1, "startTranscription"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mTranscriptionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->registerListener(Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mKeyboardPanelApp:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-static {v0, v1}, Lcom/oculus/assistant/service/api/OculusAssistant;->bindService(Landroid/content/Context;Lcom/oculus/assistant/service/api/AssistantServiceConnection;)Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mTranscriptionListener:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$TranscriptionListener;

    invoke-virtual {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->registerListener(Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->startTranscriptionSession()V

    :goto_0
    return-void
.end method

.method public stopTranscription()V
    .locals 2

    const-string v0, "AssistantKT"

    const-string v1, "stopTranscription"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->mServiceConnection:Lcom/oculus/assistant/service/api/AssistantServiceConnection;

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->stopTranscriptionSession()V

    :cond_0
    return-void
.end method
