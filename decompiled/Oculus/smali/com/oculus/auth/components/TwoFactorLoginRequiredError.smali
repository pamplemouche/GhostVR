.class public final Lcom/oculus/auth/components/TwoFactorLoginRequiredError;
.super Lcom/oculus/auth/components/MarshallableError;
.source "TwoFactorLoginRequiredError.java"


# instance fields
.field private final mMethods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mNonce:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/http/core/base/ApiError;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p3    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/http/core/base/ApiError;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/twofac/TwoFactorMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 22
    const/4 v0, -0x8

    .line 24
    invoke-virtual {p1, v2}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v2}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/auth/components/MarshallableError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p2, p0, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;->mNonce:Ljava/lang/String;

    .line 27
    invoke-static {p3}, Lcom/oculus/auth/api/AuthDataHelper;->convertTwoFactorMethods(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;->mMethods:Lcom/google/common/collect/ImmutableList;

    .line 28
    return-void
.end method


# virtual methods
.method public marshal()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/oculus/auth/components/MarshallableError;->marshal()Landroid/os/Bundle;

    move-result-object v0

    .line 33
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;->mMethods:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_0

    .line 35
    const-string/jumbo v1, "two_factor_methods"

    iget-object v2, p0, Lcom/oculus/auth/components/TwoFactorLoginRequiredError;->mMethods:Lcom/google/common/collect/ImmutableList;

    .line 37
    invoke-static {v2}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 39
    :cond_0
    return-object v0
.end method
