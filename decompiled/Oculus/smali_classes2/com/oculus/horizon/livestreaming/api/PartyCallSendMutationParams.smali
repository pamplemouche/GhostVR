.class public Lcom/oculus/horizon/livestreaming/api/PartyCallSendMutationParams;
.super Ljava/lang/Object;
.source "PartyCallSendMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/api/PartyCallSendMutationParams;->userId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    const-string v0, "requested_user_id"

    iget-object v1, p0, Lcom/oculus/horizon/livestreaming/api/PartyCallSendMutationParams;->userId:Ljava/lang/String;

    .line 25
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
