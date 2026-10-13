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
    .locals 7
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/authapi/AuthError;
        }
    .end annotation

    .prologue
    const/4 v6, -0x7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v3, "uid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "uid":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 18
    const-string v1, "UID missing from FB login result"

    .line 19
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Lcom/oculus/authapi/AuthError;

    const-string v4, "UID missing from FB login result"

    const-string v5, "UID missing from FB login result"

    invoke-direct {v3, v6, v4, v5}, Lcom/oculus/authapi/AuthError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 21
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "accessToken":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 23
    const-string v1, "Access token missing from FB login result"

    .line 24
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Lcom/oculus/authapi/AuthError;

    const-string v4, "Access token missing from FB login result"

    const-string v5, "Access token missing from FB login result"

    invoke-direct {v3, v6, v4, v5}, Lcom/oculus/authapi/AuthError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 26
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iput-object v2, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mUid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mAccessToken:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginResult;->mUid:Ljava/lang/String;

    return-object v0
.end method
