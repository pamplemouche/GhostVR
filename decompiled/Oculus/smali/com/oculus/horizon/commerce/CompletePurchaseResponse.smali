.class public Lcom/oculus/horizon/commerce/CompletePurchaseResponse;
.super Lcom/oculus/horizon/commerce/GrantEntitlementResponse;
.source "CompletePurchaseResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;
    }
.end annotation


# instance fields
.field public entitle_user:Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oculus/horizon/commerce/GrantEntitlementResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppEntitlements()Lcom/google/common/collect/ImmutableList;
    .locals 1
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
    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CompletePurchaseResponse;->entitle_user:Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

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
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CompletePurchaseResponse;->entitle_user:Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/commerce/CompletePurchaseResponse;->entitle_user:Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CompletePurchaseResponse$EntitleUser;->entitlement:Lcom/oculus/horizon/api/common/Entitlement;

    if-nez v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entitle_user is null or entitlement is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    return-void
.end method
