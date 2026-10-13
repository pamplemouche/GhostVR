.class public Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;
.super Lcom/facebook/secure/intent/BaseIntentScope;
.source "AccessibleByAnyAppIntentScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope$Api23Utils;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/facebook/secure/intent/BaseIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    .line 32
    return-void
.end method

.method private isEndpointAccessibleByAnyApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z
    .locals 11

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    iget-boolean v2, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_3

    .line 86
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 87
    if-nez v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    invoke-static {}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOnOrAboveApi23()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    invoke-static {}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope$Api23Utils;->getProtectionFlagPrivileged()I

    move-result v2

    .line 116
    :goto_1
    and-int v5, v4, v10

    if-eq v5, v10, :cond_2

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_6

    :cond_2
    move v2, v0

    .line 122
    :goto_2
    if-eqz v2, :cond_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOpenEverywhere()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 129
    iget-object v2, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "AccessibleByAnyAppIntentScope"

    const-string v5, "Fail-open: allowing non-public activity %s/%s: exported=%s, permission=%s."

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v1

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v1, v6, v0

    iget-boolean v1, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v10

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    aput-object v1, v6, v3

    .line 131
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 129
    invoke-interface {v2, v4, v1, v3}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 98
    invoke-virtual {p0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOpenOnNonFbAndException()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    iget-object v5, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v6, "AccessibleByAnyAppIntentScope"

    const-string v7, "Error checking permission for %s/%s but fail-open: exported=%s, permission=%s."

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v1

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v1, v8, v0

    iget-boolean v1, p2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 103
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v10

    aput-object v4, v8, v3

    .line 101
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-interface {v5, v6, v1, v2}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 107
    goto :goto_0

    :cond_5
    move v2, v3

    .line 114
    goto :goto_1

    :cond_6
    move v2, v1

    .line 116
    goto :goto_2

    :cond_7
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method static isOnOrAboveApi23()Z
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enforceActivityIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->filterActivityByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 44
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p2, v0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isEndpointAccessibleByAnyApp(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "AccessibleByAnyAppIntentScope"

    const-string v2, "No matching public activities."

    invoke-interface {v0, v1, v2, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 74
    :goto_1
    return-object v0

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 58
    iget-object v0, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    invoke-virtual {p0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOpenEverywhere()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/secure/intent/ExternalIntentSanitization;->sanitize(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 62
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 64
    iget-object v0, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    invoke-virtual {p0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOpenEverywhere()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/secure/intent/ExternalIntentSanitization;->sanitize(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;Z)Landroid/content/Intent;

    move-result-object v0

    .line 65
    invoke-static {v5, v0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->getIntentsForTrustedComponents(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->createChooserIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 71
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    invoke-virtual {p0}, Lcom/facebook/secure/intent/AccessibleByAnyAppIntentScope;->isOpenEverywhere()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/secure/intent/ExternalIntentSanitization;->sanitize(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1
.end method

.method public enforceReceiverIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
