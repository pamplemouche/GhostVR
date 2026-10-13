.class public interface abstract Lcom/oculus/aidl/OVRMediaServiceInterface;
.super Ljava/lang/Object;
.source "OVRMediaServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/aidl/OVRMediaServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendLivestreamingRawPCMData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
