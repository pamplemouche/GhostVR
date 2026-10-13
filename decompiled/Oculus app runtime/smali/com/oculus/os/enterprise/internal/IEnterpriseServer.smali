.class public interface abstract Lcom/oculus/os/enterprise/internal/IEnterpriseServer;
.super Ljava/lang/Object;
.source "IEnterpriseServer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/enterprise/internal/IEnterpriseServer$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfiguration()Lcom/oculus/os/enterprise/internal/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfigurationWithVersion(Lcom/oculus/os/enterprise/internal/Version;)Lcom/oculus/os/enterprise/internal/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
