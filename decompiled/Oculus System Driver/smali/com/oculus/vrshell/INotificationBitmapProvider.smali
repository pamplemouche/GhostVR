.class public interface abstract Lcom/oculus/vrshell/INotificationBitmapProvider;
.super Ljava/lang/Object;
.source "INotificationBitmapProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/INotificationBitmapProvider$Stub;
    }
.end annotation


# virtual methods
.method public abstract getNotificationBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
