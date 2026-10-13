.class public Lcom/facebook/secure/intent/ThirdPartyIntentScope;
.super Lcom/facebook/secure/intent/DifferentKeyIntentScope;
.source "ThirdPartyIntentScope.java"


# instance fields
.field private final mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;


# virtual methods
.method verifySignature(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    .line 25
    iget-object v0, p0, Lcom/facebook/secure/intent/ThirdPartyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "ThirdPartyIntentScope"

    const-string v3, "Null application info."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/facebook/secure/intent/ThirdPartyIntentScope;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v2

    .line 38
    iget-object v3, p0, Lcom/facebook/secure/intent/ThirdPartyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "ThirdPartyIntentScope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception in checking trusted app for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/secure/intent/ThirdPartyIntentScope;->isEnforceEverywhere()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
