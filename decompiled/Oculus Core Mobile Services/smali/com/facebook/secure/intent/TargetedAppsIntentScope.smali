.class public Lcom/facebook/secure/intent/TargetedAppsIntentScope;
.super Lcom/facebook/secure/intent/BaseIntentScope;
.source "TargetedAppsIntentScope.java"


# annotations
.annotation build Lcom/facebook/annotations/OkToExtend;
.end annotation


# instance fields
.field private final mAllowDebugBuild:Z

.field private final mAttachCallerInfo:Z

.field private final mTag:Ljava/lang/String;

.field private final mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;


# direct methods
.method private enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroid/content/pm/ComponentInfo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 165
    iget-boolean v1, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mAttachCallerInfo:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    .line 168
    invoke-static {p1, p2, p3, v1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;

    move-result-object p1

    .line 173
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->filterTargetedAppsComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTag:Ljava/lang/String;

    const-string v3, "No matching packages available."

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 201
    :goto_0
    return-object p1

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->showChooser:Z

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 182
    invoke-static {v1, p1}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->getIntentsForTrustedComponents(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->createChooserIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 191
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ComponentInfo;

    .line 192
    invoke-direct {p0, v1, p2}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->isDifferentSignatureComponent(Landroid/content/pm/ComponentInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 198
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private filterTargetedAppsComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Landroid/content/pm/ComponentInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 210
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, v3}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->isTargetedAppsFailOpen(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    return-object v1
.end method

.method private isDifferentSignatureComponent(Landroid/content/pm/ComponentInfo;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    iget-object v3, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error verifying the signature for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isTargetedAppsFailOpen(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 224
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4, p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(ILandroid/content/Context;)Z

    move-result v2

    .line 228
    if-eqz v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->isOpenEverywhere()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    iget-object v4, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an app defined the targeted app whitelist but fail-open."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    iget-object v4, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    iget-object v5, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected exception in checking trusted app for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3, v2}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    invoke-virtual {p0}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->isEnforceEverywhere()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 240
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCurrentAppDebugBuild(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mAllowDebugBuild:Z

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 241
    goto :goto_0

    .line 246
    :cond_4
    invoke-static {p1, v3}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v2

    .line 245
    invoke-static {v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public enforceReceiverIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 111
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTrustedApp:Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-virtual {v2, v0, p2}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(ILandroid/content/Context;)Z

    move-result v2

    .line 115
    if-eqz v2, :cond_1

    .line 124
    :goto_1
    return-object p1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    const-string v2, "Access denied. Process %d cannot receive broadcasts from %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 120
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    iget-object v2, p0, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public enforceServiceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->filterServiceByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
