.class public Lcom/oculus/horizon/commerce/ConfirmOrderParams;
.super Ljava/lang/Object;
.source "ConfirmOrderParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final machineId:Ljava/lang/String;

.field public final order:Ljava/lang/String;

.field public final pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->order:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->pin:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->machineId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 25
    const-string v0, "order_id"

    iget-object v1, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->order:Ljava/lang/String;

    const-string v2, "pin"

    iget-object v3, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->pin:Ljava/lang/String;

    .line 26
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const-string v1, "machine_id"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/ConfirmOrderParams;->machineId:Ljava/lang/String;

    .line 29
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
