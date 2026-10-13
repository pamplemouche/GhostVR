.class public Lcom/oculus/horizon/api/commerce/RefundRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "RefundRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/commerce/RefundResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final comment:Ljava/lang/String;

.field public final itemActivitySeconds:J

.field public final itemId:Ljava/lang/String;

.field public final libraryCreationTimestamp:J

.field public final pin:Ljava/lang/String;

.field public final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->itemId:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->itemActivitySeconds:J

    .line 27
    iput-wide p4, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->libraryCreationTimestamp:J

    .line 28
    iput-object p6, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->reason:Ljava/lang/String;

    .line 29
    iput-object p7, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->comment:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->pin:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "client_mutation_id"

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "item_ids"

    iget-object v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->itemId:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "play_times"

    iget-wide v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->itemActivitySeconds:J

    .line 37
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "creation_time"

    iget-wide v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->libraryCreationTimestamp:J

    .line 38
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->reason:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "comment"

    iget-object v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->comment:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "pin"

    iget-object v2, p0, Lcom/oculus/horizon/api/commerce/RefundRequest;->pin:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
