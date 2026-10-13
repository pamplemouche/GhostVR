.class final Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$2;
.super Ljava/lang/Object;
.source "TwoFactorMethodsFragment.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;->wrapMethods(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
        "Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;

    invoke-direct {v0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;-><init>(Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    check-cast p1, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$2;->apply(Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;

    move-result-object v0

    return-object v0
.end method
