.class public interface abstract Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;
.super Ljava/lang/Object;
.source "IOculusAssistantTranscriptionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract startTranscriptionSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopTranscriptionSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
