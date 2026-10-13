.class public interface abstract Lcom/oculus/library/net/LibraryMethods$Methods;
.super Ljava/lang/Object;
.source "LibraryMethods.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/net/LibraryMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Methods"
.end annotation


# virtual methods
.method public abstract generateEntitlementUpdateData(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/library/net/GenerateUpdateInfoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method

.method public abstract getActiveEntitlements(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/library/net/ActiveEntitlementsResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "variables"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method
