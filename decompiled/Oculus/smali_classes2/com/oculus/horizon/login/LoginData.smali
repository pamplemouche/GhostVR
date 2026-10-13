.class public Lcom/oculus/horizon/login/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/login/LoginData$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mEmail:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIsSecuredAction:Z

.field private final mNonce:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTwoFactorMethodId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;
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

.field private final mVerifyLoginErrorMessage:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVerifyLoginErrorTitle:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/login/LoginData;->mEmail:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/oculus/horizon/login/LoginData;->mNonce:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/oculus/horizon/login/LoginData;->mVerifyLoginErrorTitle:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/oculus/horizon/login/LoginData;->mVerifyLoginErrorMessage:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethodId:Ljava/lang/String;

    .line 37
    if-eqz p6, :cond_0

    .line 38
    invoke-static {p6}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    .line 42
    :goto_0
    iput-boolean p7, p0, Lcom/oculus/horizon/login/LoginData;->mIsSecuredAction:Z

    .line 43
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/oculus/horizon/login/LoginData$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/login/LoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getTwoFactorMethod()Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethodId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    .line 81
    iget-object v3, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethodId:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 85
    goto :goto_0
.end method

.method public getTwoFactorMethodId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getTwoFactorMethods()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mTwoFactorMethods:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getVerifyLoginErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mVerifyLoginErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyLoginErrorTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginData;->mVerifyLoginErrorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isSecuredAction()Z
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/oculus/horizon/login/LoginData;->mIsSecuredAction:Z

    return v0
.end method
