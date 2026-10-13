.class public interface abstract Lcom/oculus/assistant/service/api/IOculusAssistantService;
.super Ljava/lang/Object;
.source "IOculusAssistantService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/IOculusAssistantService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAttentionService()Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getControlService()Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTranscriptionService()Lcom/oculus/assistant/service/api/transcription/IOculusAssistantTranscriptionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
