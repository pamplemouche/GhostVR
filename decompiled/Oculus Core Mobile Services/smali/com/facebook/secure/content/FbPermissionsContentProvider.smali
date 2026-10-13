.class public abstract Lcom/facebook/secure/content/FbPermissionsContentProvider;
.super Lcom/facebook/secure/content/AbstractContentProviderNoDI;
.source "FbPermissionsContentProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/secure/content/AbstractContentProviderNoDI;-><init>()V

    return-void
.end method

.method private onCheckPermissionsHelper(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getFbPermission()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkCallerHasFbPermissions(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getFbPermission()Ljava/lang/String;
.end method

.method protected getReadOnlyFbPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getFbPermission()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReporter()Lcom/facebook/secure/logger/Reporter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCheckPermissions()Z
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getFbPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->onCheckPermissionsHelper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onCheckReadOnlyPermissions()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->getReadOnlyFbPermission()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->onCheckPermissionsHelper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
