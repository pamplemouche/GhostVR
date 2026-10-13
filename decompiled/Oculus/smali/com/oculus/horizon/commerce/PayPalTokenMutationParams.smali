.class public Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;
.super Ljava/lang/Object;
.source "PayPalTokenMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final cancel_url:Ljava/net/URL;

.field private final context:Ljava/lang/String;

.field public final locale:Ljava/lang/String;

.field private final return_url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "digital"

    iput-object v0, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->context:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->locale:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->return_url:Ljava/net/URL;

    .line 33
    iput-object p3, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->cancel_url:Ljava/net/URL;

    .line 34
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->locale:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "return_url"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->return_url:Ljava/net/URL;

    .line 41
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "cancel_url"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;->cancel_url:Ljava/net/URL;

    .line 42
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "paypal_context"

    const-string v2, "digital"

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
