.class public Lcom/oculus/horizon/commerce/PurchaseOrderParams;
.super Ljava/lang/Object;
.source "PurchaseOrderParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final machineId:Ljava/lang/String;

.field public final offerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/horizon/commerce/PurchaseOrderParams;->offerId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/oculus/horizon/commerce/PurchaseOrderParams;->machineId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    const-string v0, "offer_id"

    iget-object v1, p0, Lcom/oculus/horizon/commerce/PurchaseOrderParams;->offerId:Ljava/lang/String;

    .line 27
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "machine_id"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/PurchaseOrderParams;->machineId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
