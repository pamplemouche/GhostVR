.class public Lcom/oculus/horizon/commerce/RedeemCodeParams;
.super Ljava/lang/Object;
.source "RedeemCodeParams.java"


# instance fields
.field public final couponCode:Ljava/lang/String;

.field public final itemId:Ljava/lang/String;

.field public final machineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->couponCode:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->itemId:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->machineId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "coupon_code"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->couponCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->itemId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "item_id"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "machine_id"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/RedeemCodeParams;->machineId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
