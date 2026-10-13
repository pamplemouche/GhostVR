.class public interface abstract Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService;
.super Ljava/lang/Object;
.source "IOculusAssistantAttentionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerAttentionListener(Lcom/oculus/assistant/service/api/attention/IOculusAssistantAttentionListener;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeAttentionListener(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
