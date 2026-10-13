.class public Lcom/oculus/horizon/login/LoginData$Builder;
.super Ljava/lang/Object;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/login/LoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEmail:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsSecuredAction:Z

.field private mNonce:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTwoFactorMethodId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;
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

.field private mVerifyLoginErrorMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVerifyLoginErrorTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mEmail:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mNonce:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorTitle:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorMessage:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethodId:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mIsSecuredAction:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/oculus/horizon/login/LoginData;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mEmail:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getNonce()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mNonce:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getVerifyLoginErrorTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorTitle:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getVerifyLoginErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorMessage:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getTwoFactorMethodId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethodId:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->getTwoFactorMethods()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    .line 120
    invoke-virtual {p1}, Lcom/oculus/horizon/login/LoginData;->isSecuredAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mIsSecuredAction:Z

    .line 121
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/login/LoginData;
    .locals 9

    .prologue
    .line 124
    new-instance v0, Lcom/oculus/horizon/login/LoginData;

    iget-object v1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mNonce:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethodId:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    iget-boolean v7, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mIsSecuredAction:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/login/LoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/oculus/horizon/login/LoginData$1;)V

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mEmail:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setNonce(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mNonce:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setSecuredAction(Z)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mIsSecuredAction:Z

    .line 169
    return-object p0
.end method

.method public setTwoFactorMethodId(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethodId:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public setTwoFactorMethods(Ljava/util/List;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;)",
            "Lcom/oculus/horizon/login/LoginData$Builder;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    .line 164
    :cond_0
    return-object p0
.end method

.method public setVerifyLoginErrorMessage(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorMessage:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setVerifyLoginErrorTitle(Ljava/lang/String;)Lcom/oculus/horizon/login/LoginData$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData$Builder;->mVerifyLoginErrorTitle:Ljava/lang/String;

    .line 146
    return-object p0
.end method
