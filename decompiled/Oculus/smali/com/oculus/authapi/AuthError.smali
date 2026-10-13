.class public Lcom/oculus/authapi/AuthError;
.super Ljava/lang/Exception;
.source "AuthError.java"


# annotations
.annotation build Lcom/facebook/annotations/OkToExtend;
.end annotation


# instance fields
.field public final mErrorCode:I

.field public final mErrorMessage:Ljava/lang/String;

.field public final mErrorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput p1, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    .line 26
    iput-object p2, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    const-string v0, "error_code"

    const/4 v1, -0x7

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    .line 20
    const-string v0, "error_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    .line 21
    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    return v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
