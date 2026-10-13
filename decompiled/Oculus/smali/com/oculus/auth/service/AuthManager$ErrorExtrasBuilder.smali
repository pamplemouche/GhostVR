.class Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/service/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ErrorExtrasBuilder"
.end annotation


# instance fields
.field private mErrorCode:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mErrorTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMarshallableError:Lcom/oculus/auth/components/MarshallableError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNonce:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTwoFactorMethods:Ljava/util/ArrayList;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromException(Ljava/lang/Exception;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
    .locals 4
    .param p0    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 196
    new-instance v0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;

    invoke-direct {v0}, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;-><init>()V

    .line 197
    if-nez p0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    instance-of v1, p0, Lcom/oculus/auth/components/MarshallableError;

    if-eqz v1, :cond_2

    .line 202
    check-cast p0, Lcom/oculus/auth/components/MarshallableError;

    iput-object p0, v0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mMarshallableError:Lcom/oculus/auth/components/MarshallableError;

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {p0}, Lcom/oculus/auth/service/AuthManager;->access$000(Ljava/lang/Throwable;)Lcom/oculus/auth/service/AuthService$AuthResult;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Lcom/oculus/auth/service/AuthService$AuthResult;->getIntCode()I

    move-result v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->setErrorCode(I)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;

    .line 210
    instance-of v2, p0, Lcom/oculus/http/core/base/ApiError;

    if-eqz v2, :cond_0

    .line 211
    check-cast p0, Lcom/oculus/http/core/base/ApiError;

    .line 212
    invoke-virtual {p0, v3}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->setErrorTitle(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;

    .line 213
    invoke-virtual {p0, v3}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->setErrorMessage(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;

    .line 214
    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, -0x8

    if-ne v1, v2, :cond_0

    .line 216
    :cond_3
    invoke-static {p0}, Lcom/oculus/auth/service/AuthManager;->access$100(Lcom/oculus/http/core/base/ApiError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->setNonce(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mMarshallableError:Lcom/oculus/auth/components/MarshallableError;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mMarshallableError:Lcom/oculus/auth/components/MarshallableError;

    invoke-virtual {v0}, Lcom/oculus/auth/components/MarshallableError;->marshal()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 176
    const-string v1, "error_code"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 179
    const-string v1, "error_title"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 182
    const-string v1, "error_message"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_4
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mNonce:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 185
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mTwoFactorMethods:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 188
    const-string/jumbo v1, "two_factor_methods"

    iget-object v2, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mTwoFactorMethods:Ljava/util/ArrayList;

    .line 190
    invoke-static {v2}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->marshallParcelableList(Ljava/util/List;)[B

    move-result-object v2

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setErrorCode(I)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
    .locals 1

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorCode:Ljava/lang/Integer;

    .line 150
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorMessage:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setErrorTitle(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mErrorTitle:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    iput-object p1, p0, Lcom/oculus/auth/service/AuthManager$ErrorExtrasBuilder;->mNonce:Ljava/lang/String;

    .line 165
    return-object p0
.end method
