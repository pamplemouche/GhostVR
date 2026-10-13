.class Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$1;
.super Lcom/oculus/assistant/service/api/AssistantServiceConnection;
.source "KeyboardTranscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription$1;->this$0:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-direct {p0}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTranscriptionServiceConnected(Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/oculus/assistant/service/api/AssistantServiceConnection;->onTranscriptionServiceConnected(Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;)V

    .line 74
    invoke-virtual {p1}, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->startTranscriptionSession()V

    return-void
.end method
