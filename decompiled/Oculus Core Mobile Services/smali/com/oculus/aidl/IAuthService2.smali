.class public interface abstract Lcom/oculus/aidl/IAuthService2;
.super Ljava/lang/Object;
.source "IAuthService2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/aidl/IAuthService2$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCredentials()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
