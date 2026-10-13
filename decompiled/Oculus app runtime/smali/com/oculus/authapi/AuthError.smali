.class public Lcom/oculus/authapi/AuthError;
.super Ljava/lang/Exception;
.source "AuthError.java"


# instance fields
.field public final mErrorCode:I

.field public final mErrorMessage:Ljava/lang/String;

.field public final mErrorTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 23
    iput p1, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    .line 24
    iput-object p2, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "error_code"

    const/4 v1, -0x7

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    const-string v0, "error_title"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    const-string v0, "error_message"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/oculus/authapi/AuthError;->mErrorCode:I

    return v0
.end method

.method public getErrorTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/oculus/authapi/AuthError;->mErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
