.class public final Lcom/oculus/authapi/AuthFbLoginError;
.super Lcom/oculus/authapi/AuthError;
.source "AuthFbLoginError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mAuthToken:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLoginFirstFactor:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMachineId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUid:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/authapi/AuthError;-><init>(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mUid:Ljava/lang/String;

    .line 24
    const-string v0, "machine_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mMachineId:Ljava/lang/String;

    .line 25
    const-string v0, "auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mAuthToken:Ljava/lang/String;

    .line 26
    const-string v0, "login_first_factor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mLoginFirstFactor:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/oculus/authapi/AuthError;)V
    .locals 4
    .param p1, "basicError"    # Lcom/oculus/authapi/AuthError;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getErrorTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/authapi/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/authapi/AuthError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object v3, p0, Lcom/oculus/authapi/AuthFbLoginError;->mUid:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcom/oculus/authapi/AuthFbLoginError;->mMachineId:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lcom/oculus/authapi/AuthFbLoginError;->mAuthToken:Ljava/lang/String;

    .line 34
    iput-object v3, p0, Lcom/oculus/authapi/AuthFbLoginError;->mLoginFirstFactor:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginFirstFactor()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mLoginFirstFactor:Ljava/lang/String;

    return-object v0
.end method

.method public getMachineId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mMachineId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/authapi/AuthFbLoginError;->mUid:Ljava/lang/String;

    return-object v0
.end method
