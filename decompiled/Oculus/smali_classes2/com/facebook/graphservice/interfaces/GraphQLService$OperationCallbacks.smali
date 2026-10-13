.class public interface abstract Lcom/facebook/graphservice/interfaces/GraphQLService$OperationCallbacks;
.super Ljava/lang/Object;
.source "GraphQLService.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/graphservice/interfaces/GraphQLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OperationCallbacks"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/tigon/TigonErrorException;)V
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method
