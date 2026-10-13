.class public Lcom/oculus/ipc/client/CallerIdentityHandshakeClient;
.super Ljava/lang/Object;
.source "CallerIdentityHandshakeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToBundle(Landroid/os/Bundle;I)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "extra_key_handshake_binder"

    new-instance v1, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;

    invoke-direct {v1, p1}, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    return-void
.end method
