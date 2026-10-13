.class public Lcom/oculus/auth/api/AuthDataHelper;
.super Ljava/lang/Object;
.source "AuthDataHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertTwoFactorMethods(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/twofac/TwoFactorMethod;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v7

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;

    .line 20
    new-instance v0, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;

    iget-object v1, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->id:Ljava/lang/String;

    iget-object v2, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->label:Ljava/lang/String;

    iget-object v3, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->instructions:Ljava/lang/String;

    iget-object v4, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->send_option:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->resend_text:Ljava/lang/String;

    iget-object v6, v6, Lcom/oculus/horizon/api/twofac/TwoFactorMethod;->enter_code_option:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/oculus/auth/service/contract/AuthTwoFactorMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 20
    invoke-virtual {v7, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method
