.class public abstract Lcom/facebook/secure/intent/DifferentKeyIntentScope;
.super Lcom/facebook/secure/intent/BaseIntentScope;
.source "DifferentKeyIntentScope.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InstanceMethodCanBeStatic"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/secure/intent/BaseIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;)V

    .line 27
    return-void
.end method

.method private enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 6
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
    const/4 v1, 0x0

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 120
    invoke-virtual {p0, p2, v0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->verifySignature(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isOpenEverywhere()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-external/third-party component detected, but allowing because of fail-open: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v4, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v5, "DifferentKeyIntentScope"

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed non-external/third-party component: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v4, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v5, "DifferentKeyIntentScope"

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {v0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isResolveActivity(Landroid/content/pm/ComponentInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isOpenOnNonFbAndException()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found potentially dangerous resolver but not removing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v4, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v5, "DifferentKeyIntentScope"

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 140
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed potentially dangerous resolver: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v4, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v5, "DifferentKeyIntentScope"

    invoke-interface {v4, v5, v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 144
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 148
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    const-string v2, "DifferentKeyIntentScope"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching different-signature components for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-static {p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-interface {v0, v2, v3, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 171
    :goto_1
    return-object v0

    .line 158
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 160
    invoke-static {v2, p1}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->getIntentsForTrustedComponents(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->createChooserIntent(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 171
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->reporter:Lcom/facebook/secure/logger/Reporter;

    invoke-virtual {p0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isOpenEverywhere()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/facebook/secure/intent/ExternalIntentSanitization;->sanitize(Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ComponentInfo;

    .line 165
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private static isResolveActivity(Landroid/content/pm/ComponentInfo;)Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const-string v0, "com.android.internal.app.ResolverActivity"

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 54
    invoke-static {p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->filterActivityByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->filterLaunchableActivity(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 63
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
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
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 79
    invoke-static {p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->isExplicitInternalIntent(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->filterServiceByMatchingIntentFilter(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->filterLaunchableService(Landroid/content/Intent;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 88
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/secure/intent/DifferentKeyIntentScope;->enforceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method abstract verifySignature(Landroid/content/Context;Landroid/content/pm/ComponentInfo;)Z
.end method
