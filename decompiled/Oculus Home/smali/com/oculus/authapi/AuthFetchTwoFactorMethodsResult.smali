.class public Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;
.super Ljava/lang/Object;
.source "AuthFetchTwoFactorMethodsResult.java"


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
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v1, "two_factor_methods"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 17
    .local v0, "blob":[B
    sget-object v1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    invoke-static {v0, v1}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->unmarshallParcelableList([BLandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mTwoFactorMethods:Ljava/util/ArrayList;

    .line 19
    const-string v1, "nonce"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mNonce:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mNonce:Ljava/lang/String;

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
    .line 23
    iget-object v0, p0, Lcom/oculus/authapi/AuthFetchTwoFactorMethodsResult;->mTwoFactorMethods:Ljava/util/ArrayList;

    return-object v0
.end method
