.class final Lcom/facebook/secure/trustedapp/checker/CheckerBase$3;
.super Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.source "CheckerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
    .locals 3
    .param p4    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p3}, Lcom/facebook/secure/trustedapp/TrustedApp;->getAppIdentity(Landroid/content/Context;Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v1

    .line 48
    if-nez v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCurrentAppDebugBuild(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p1, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
