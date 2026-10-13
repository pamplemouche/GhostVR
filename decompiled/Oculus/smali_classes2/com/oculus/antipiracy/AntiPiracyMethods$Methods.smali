.class interface abstract Lcom/oculus/antipiracy/AntiPiracyMethods$Methods;
.super Ljava/lang/Object;
.source "AntiPiracyMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/antipiracy/AntiPiracyMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Methods"
.end annotation


# virtual methods
.method public abstract getOculusDeveloperStatus(Ljava/lang/String;)Lcom/oculus/antipiracy/OculusDeveloperQueryResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "doc"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/graphql"
    .end annotation
.end method
