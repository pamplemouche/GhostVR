.class public abstract Lcom/facebook/secure/content/SecureContentProvider;
.super Lcom/facebook/secure/content/AbstractContentProvider;
.source "SecureContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCheckPermissions()Z
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/facebook/secure/content/SecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkSameSignatureCaller(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
