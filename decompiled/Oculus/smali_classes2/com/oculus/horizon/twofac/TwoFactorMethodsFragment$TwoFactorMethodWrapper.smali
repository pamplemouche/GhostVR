.class Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;
.super Ljava/lang/Object;
.source "TwoFactorMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoFactorMethodWrapper"
.end annotation


# instance fields
.field private mMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;


# direct methods
.method constructor <init>(Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;->mMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/twofac/TwoFactorMethodsFragment$TwoFactorMethodWrapper;->mMethod:Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    iget-object v0, v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;->label:Ljava/lang/String;

    return-object v0
.end method
