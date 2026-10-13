.class public interface abstract Lcom/oculus/os/IIpdChangeClient;
.super Ljava/lang/Object;
.source "IIpdChangeClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/IIpdChangeClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onIpdChange(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
