.class public abstract Lcom/facebook/secure/content/PublicContentProvider;
.super Lcom/facebook/secure/content/AbstractContentProviderNoDI;
.source "PublicContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCheckPermissions()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
