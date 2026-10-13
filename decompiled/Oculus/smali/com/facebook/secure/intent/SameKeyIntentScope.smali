.class public Lcom/facebook/secure/intent/SameKeyIntentScope;
.super Lcom/facebook/secure/intent/BaseIntentScope;
.source "SameKeyIntentScope.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InstanceMethodCanBeStatic"
    }
.end annotation


# direct methods
.method private enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
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

    .line 134
    invoke-direct {p0, p2, p3}, Lcom/facebook/secure/intent/SameKeyIntentScope;->filterSameKeyComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "SameKeyIntentScope"

    const-string v3, "No matching same-key components."

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 161
    :goto_0
    return-object p1

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->showChooser:Z

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 143
    invoke-static {v1, p1}, Lcom/facebook/secure/intent/SameKeyIntentScope;->getIntentsForTrustedComponents(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->createChooserIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 153
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySamePackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    move-object v1, v0

    .line 156
    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 158
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private filterSameKeyComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 11
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
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 169
    if-nez v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "SameKeyIntentScope"

    const-string v3, "Current app info is null."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 205
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 177
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 178
    if-nez v4, :cond_1

    .line 179
    iget-object v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "SameKeyIntentScope"

    const-string v5, "Target app info is null."

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 185
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/facebook/secure/intent/SameKeyIntentScope;->verifySameSignatureFailOpen(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->isOpenEverywhere()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 188
    iget-object v5, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v6, "SameKeyIntentScope"

    const-string v7, "Different signature of the component but fail-open: current app=%s, target app=%s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v8, v9

    .line 190
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 188
    invoke-interface {v5, v6, v4, v7}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v5, "SameKeyIntentScope"

    const-string v6, "Different signature component blocked: current app=%s, target app=%s."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v7, v8

    .line 198
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 196
    invoke-interface {v0, v5, v4, v6}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method private verifySameSignatureFailOpen(Landroid/content/Context;II)Z
    .locals 5

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {p0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v1

    const-string v2, "SameKeyIntentScope"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception in verifying signature for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    invoke-virtual {p0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->isOpenEverywhere()Z

    move-result v0

    goto :goto_0
.end method

.method private verifySameSignatureFailOpen(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    .prologue
    .line 213
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {p0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->getReporter()Lcom/facebook/secure/logger/Reporter;

    move-result-object v1

    const-string v2, "SameKeyIntentScope"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception in verifying signature for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    invoke-virtual {p0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->isOpenEverywhere()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public enforceActivityIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    .line 48
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;

    move-result-object v0

    .line 52
    invoke-static {v0, p2}, Lcom/facebook/secure/intent/SameKeyIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/secure/intent/SameKeyIntentScope;->filterActivityByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/secure/intent/SameKeyIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public enforceReceiverIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 91
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 93
    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/facebook/secure/intent/SameKeyIntentScope;->verifySameSignatureFailOpen(Landroid/content/Context;II)Z

    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    return-object p1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    const-string v2, "Access denied. Process %d cannot receive broadcasts from %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 98
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "SameKeyIntentScope"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enforceServiceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/secure/intent/SameKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    .line 72
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    invoke-static {v0, p2}, Lcom/facebook/secure/intent/SameKeyIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/secure/intent/SameKeyIntentScope;->filterServiceByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/secure/intent/SameKeyIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
