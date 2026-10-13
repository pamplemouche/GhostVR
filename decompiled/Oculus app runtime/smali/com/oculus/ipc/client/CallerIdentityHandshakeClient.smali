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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToBundle(Landroid/os/Bundle;I)V
    .locals 1

    .line 34
    new-instance v0, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;

    invoke-direct {v0, p1}, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;-><init>(I)V

    const-string p1, "extra_key_handshake_binder"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
