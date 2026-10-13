.class public interface abstract Lcom/oculus/os/ITelemetry;
.super Ljava/lang/Object;
.source "ITelemetry.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/os/ITelemetry$Stub;
    }
.end annotation


# virtual methods
.method public abstract recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
