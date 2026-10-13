.class public Lcom/oculus/horizon/commerce/ConfirmOrderResponse;
.super Lcom/oculus/horizon/commerce/GrantEntitlementResponse;
.source "ConfirmOrderResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;
    }
.end annotation


# instance fields
.field public confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/oculus/horizon/commerce/GrantEntitlementResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppEntitlements()Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    .line 19
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->related_entitlements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Entitlement;

    .line 25
    iget-object v3, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "confirm_order is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "confirm order entitlements is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse;->confirm_order:Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/ConfirmOrderResponse$ConfirmOrder;->stored_credits:Ljava/util/List;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "confirm order store credits is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    return-void
.end method
