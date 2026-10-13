.class public interface abstract Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService;
.super Ljava/lang/Object;
.source "IOculusAssistantControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/assistant/service/api/control/IOculusAssistantControlService$Stub;
    }
.end annotation


# virtual methods
.method public abstract activateAssistant()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAssistant()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
