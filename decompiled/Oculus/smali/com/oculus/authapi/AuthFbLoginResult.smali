.class public final Lcom/oculus/authapi/AuthFbLoginResult;
.super Ljava/lang/Object;
.source "AuthFbLoginResult.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mUid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    const/4 v3, -0x7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    const-string v0, "UID missing from FB login result"

    .line 19
    new-instance v0, Lcom/oculus/authapi/AuthError;

    const-string v1, "UID missing from FB login result"

    const-string v2, "UID missing from FB login result"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/authapi/AuthError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    const-string v0, "Access token missing from FB login result"

    .line 24
    new-instance v0, Lcom/oculus/authapi/AuthError;

    const-string v1, "Access token missing from FB login result"

    const-string v2, "Access token missing from FB login result"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/authapi/AuthError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mUid:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mAccessToken:Ljava/lang/String;

    .line 28
    return-void
.end method
