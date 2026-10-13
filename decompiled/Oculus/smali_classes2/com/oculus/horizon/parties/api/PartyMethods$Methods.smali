.class interface abstract Lcom/oculus/horizon/parties/api/PartyMethods$Methods;
.super Ljava/lang/Object;
.source "PartyMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/parties/api/PartyMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getPartyStatus(Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/parties/api/PartyStatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract joinParty(Ljava/lang/String;Lcom/oculus/horizon/parties/api/PartyJoinMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/parties/api/PartyJoinMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/parties/api/PartyJoinMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/parties/api/PartyJoinResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method

.method public abstract leaveParty(Ljava/lang/String;Lcom/oculus/horizon/parties/api/PartyLeaveMutationParams;Ljava/lang/String;Lretrofit/Callback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "q"
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/parties/api/PartyLeaveMutationParams;
        .annotation runtime Lretrofit/http/Query;
            value = "query_params"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/parties/api/PartyLeaveMutationParams;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/oculus/horizon/parties/api/PartyLeaveResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/graphql"
    .end annotation
.end method
