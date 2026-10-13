.class public Lcom/oculus/authapi/AuthLoginError;
.super Lcom/oculus/authapi/AuthError;
.source "AuthLoginError.java"


# instance fields
.field private final mNonce:Ljava/lang/String;

.field private final mTwoFactorMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oculus/authapi/AuthError;-><init>(Landroid/os/Bundle;)V

    .line 19
    const-string/jumbo v0, "two_factor_methods"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 20
    sget-object v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    invoke-static {v0, v1}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginError;->mTwoFactorMethods:Ljava/util/ArrayList;

    .line 22
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginError;->mNonce:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginError;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getTwoFactorMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginError;->mTwoFactorMethods:Ljava/util/ArrayList;

    return-object v0
.end method
