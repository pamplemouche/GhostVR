.class public abstract Lcom/oculus/horizon/deeplinking/DeepLinkHandler;
.super Ljava/lang/Object;
.source "DeepLinkHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onDeepLink(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
