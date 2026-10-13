.class public interface abstract Lcom/oculus/durableiap/net/DurableIAPMethods$Methods;
.super Ljava/lang/Object;
.source "DurableIAPMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/durableiap/net/DurableIAPMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getDurableIAP(Ljava/lang/String;)Lcom/oculus/durableiap/net/IAPEntitlementsResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method
