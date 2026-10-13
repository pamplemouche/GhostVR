.class public Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;
.super Ljava/lang/Object;
.source "AuthFetchTwoFactorMethodsResult.java"


# instance fields
.field private final mNonce:Ljava/lang/String;

.field private final mTwoFactorMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "two_factor_methods"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    sget-object v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {v0, v1}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mTwoFactorMethods:Ljava/util/ArrayList;

    const-string v0, "nonce"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mNonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getTwoFactorMethods()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mTwoFactorMethods:Ljava/util/ArrayList;

    return-object v0
.end method
