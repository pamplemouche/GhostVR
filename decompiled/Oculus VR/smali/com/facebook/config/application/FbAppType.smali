.class public Lcom/facebook/config/application/FbAppType;
.super Ljava/lang/Object;
.source "FbAppType.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static volatile sAppType:Lcom/facebook/config/application/FbAppType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static getAppType()Lcom/facebook/config/application/FbAppType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/config/application/FbAppType;->sAppType:Lcom/facebook/config/application/FbAppType;

    return-object v0
.end method
