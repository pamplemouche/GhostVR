.class public Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;
.super Ljava/lang/Object;
.source "OculusAssistantTranscriptionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Assistant:OATS"


# instance fields
.field private final mTranscriptionService:Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;


# direct methods
.method public constructor <init>(Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->mTranscriptionService:Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;

    return-void
.end method


# virtual methods
.method public startTranscriptionSession()V
    .locals 3

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->mTranscriptionService:Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;

    invoke-interface {v0}, Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;->startTranscriptionSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Assistant:OATS"

    const-string v2, "startTranscriptionSession: "

    .line 29
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopTranscriptionSession()V
    .locals 3

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/oculus/assistant/service/api/transcription/OculusAssistantTranscriptionService;->mTranscriptionService:Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;

    invoke-interface {v0}, Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;->stopTranscriptionSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Assistant:OATS"

    const-string v2, "stopTranscriptionSession: "

    .line 38
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
