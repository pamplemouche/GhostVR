.class public Lcom/facebook/secure/intent/InternalIntentScope;
.super Lcom/facebook/secure/intent/BaseIntentScope;
.source "InternalIntentScope.java"


# direct methods
.method public constructor <init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/facebook/secure/intent/BaseIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    .line 26
    return-void
.end method

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

    .line 155
    invoke-direct {p0, p2, p3}, Lcom/facebook/secure/intent/InternalIntentScope;->filterInternalComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "InternalIntentScope"

    const-string v3, "No matching internal components"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 167
    :goto_0
    return-object p1

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 164
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private filterInternalComponents(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
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
    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
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

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/facebook/secure/intent/InternalIntentScope;->isInternalComponent(Landroid/content/pm/ComponentInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    return-object v1
.end method

.method private isInternalComponent(Landroid/content/pm/ComponentInfo;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 183
    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 191
    goto :goto_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/secure/intent/InternalIntentScope;->isOpenEverywhere()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v0, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "InternalIntentScope"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected different package name component but fail open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v2, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 197
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
    .line 40
    iget-object v0, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    .line 41
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-static {v0, p2}, Lcom/facebook/secure/intent/InternalIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/secure/intent/InternalIntentScope;->filterActivityByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/secure/intent/InternalIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public enforceReceiverIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :goto_1
    return-object p1

    :cond_0
    move-object v0, v1

    .line 92
    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "Access denied. %s cannot receive broadcasts from %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    .line 104
    invoke-static {v2}, Lcom/facebook/secure/trustedapp/AppIdentity;->printPackageName(Lcom/facebook/secure/trustedapp/AppIdentity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 102
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/facebook/secure/intent/InternalIntentScope;->isOpenEverywhere()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "InternalIntentScope"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail-open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "InternalIntentScope"

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v0, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 110
    goto :goto_1
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
    .line 64
    iget-object v0, p0, Lcom/facebook/secure/intent/InternalIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    .line 65
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->attachCallerInfoWithErrorReporting(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/secure/logger/Reporter;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-static {v0, p2}, Lcom/facebook/secure/intent/InternalIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/facebook/secure/intent/InternalIntentScope;->filterServiceByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/facebook/secure/intent/InternalIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
