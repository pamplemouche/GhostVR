.class public Lcom/oculus/assistant/service/api/AssistantServiceConnection;
.super Ljava/lang/Object;
.source "AssistantServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;,
        Lcom/oculus/assistant/service/api/AssistantServiceConnection$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Assistant:ASC"


# instance fields
.field private final mAttentionListener:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;

.field private mAttentionListenerKey:Ljava/lang/String;

.field mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager<",
            "Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mOculusAssistantAttentionService:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

.field private mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

.field private mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;-><init>(Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;)V

    iput-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    .line 59
    new-instance v0, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$1;-><init>(Lcom/oculus/assistant/service/api/AssistantServiceConnection;)V

    iput-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListener:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;

    return-void
.end method

.method static synthetic access$102(Lcom/oculus/assistant/service/api/AssistantServiceConnection;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mIsActive:Z

    return p1
.end method


# virtual methods
.method public getControlService()Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    return-object v0
.end method

.method public getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mIsActive:Z

    return v0
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttentionServiceConnected()V
    .locals 0

    return-void
.end method

.method protected onAttentionServiceDisconnected()V
    .locals 0

    return-void
.end method

.method protected onControlServiceConnected(Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;)V
    .locals 0

    return-void
.end method

.method protected onControlServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 108
    invoke-static {p2}, Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/assistant/service/api/IOculusAssistantService;

    move-result-object p1

    .line 111
    :try_start_0
    new-instance p2, Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    .line 112
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/IOculusAssistantService;->getControlService()Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;-><init>(Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;)V

    iput-object p2, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    .line 113
    new-instance p2, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    .line 114
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/IOculusAssistantService;->getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;-><init>(Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;)V

    iput-object p2, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    .line 115
    invoke-interface {p1}, Lcom/oculus/assistant/service/api/IOculusAssistantService;->getAttentionService()Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusAssistantAttentionService:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    .line 117
    iget-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusAssistantAttentionService:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    iget-object p2, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListener:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;

    .line 118
    invoke-interface {p1, p2}, Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;->registerAttentionListener(Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListenerKey:Ljava/lang/String;

    .line 121
    iget-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onControlServiceConnected(Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;)V

    .line 122
    iget-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    invoke-virtual {p0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onTranscriptionServiceConnected(Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;)V

    .line 123
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onAttentionServiceConnected()V

    .line 124
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onServiceReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Assistant:ASC"

    const-string v0, "onSeviceConnected: Failed to get control service"

    .line 126
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    .line 128
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    .line 129
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusAssistantAttentionService:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    :goto_0
    return-void
.end method

.method protected onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusControlService:Lcom/oculus/assistant/service/api/control/OculusAssistantControlService;

    .line 136
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onControlServiceDisconnected()V

    .line 137
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusTranscriptionService:Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;

    .line 138
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onTranscriptionServiceDisconnected()V

    .line 139
    iput-object p1, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mOculusAssistantAttentionService:Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;

    .line 140
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onAttentionServiceDisconnected()V

    .line 142
    invoke-virtual {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onServiceDisconnected()V

    return-void
.end method

.method protected onServiceReady()V
    .locals 0

    return-void
.end method

.method protected onTranscriptionServiceConnected(Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;)V
    .locals 0

    return-void
.end method

.method protected onTranscriptionServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public registerListener(Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    invoke-virtual {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->registerListener(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/oculus/assistant/service/api/attention/OculusAssistantAttentionListener;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->mAttentionListeners:Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;

    invoke-virtual {v0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection$ListenerManager;->unregisterListener(Ljava/lang/Object;)V

    return-void
.end method
