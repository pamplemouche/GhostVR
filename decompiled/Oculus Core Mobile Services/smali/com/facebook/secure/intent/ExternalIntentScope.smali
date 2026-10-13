.class public Lcom/facebook/secure/intent/ExternalIntentScope;
.super Lcom/facebook/secure/intent/DifferentKeyIntentScope;
.source "ExternalIntentScope.java"


# virtual methods
.method verifySignature(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 23
    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/intent/ExternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "ExternalIntentScope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Null app info, current app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", target app: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 50
    :cond_1
    :goto_0
    return v0

    .line 40
    :cond_2
    :try_start_0
    invoke-static {p1, v2, v3}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    .line 43
    iget-object v3, p0, Lcom/facebook/secure/intent/ExternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "ExternalIntentScope"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception in verifying signature for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Lcom/facebook/secure/intent/ExternalIntentScope;->isEnforceEverywhere()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
