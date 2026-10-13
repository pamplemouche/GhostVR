.class public Lcom/facebook/secure/context/ScopedIntentLauncher;
.super Lcom/facebook/secure/context/BaseIntentLauncher;
.source "ScopedIntentLauncher.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassIntentLauncher",
        "ImprovedNewApi"
    }
.end annotation


# instance fields
.field private mCallerDomain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mScope:Lcom/facebook/secure/intent/BaseIntentScope;


# direct methods
.method public constructor <init>(Lcom/facebook/secure/intent/BaseIntentScope;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/facebook/secure/context/BaseIntentLauncher;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/secure/context/ScopedIntentLauncher;->mCallerDomain:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/facebook/secure/context/ScopedIntentLauncher;->mScope:Lcom/facebook/secure/intent/BaseIntentScope;

    .line 42
    return-void
.end method


# virtual methods
.method public launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 335
    iget-object v1, p0, Lcom/facebook/secure/context/ScopedIntentLauncher;->mScope:Lcom/facebook/secure/intent/BaseIntentScope;

    iget-object v2, p0, Lcom/facebook/secure/context/ScopedIntentLauncher;->mCallerDomain:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/facebook/secure/intent/BaseIntentScope;->enforceServiceIntent(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 336
    invoke-virtual {p0, v0}, Lcom/facebook/secure/context/ScopedIntentLauncher;->withDomain(Ljava/lang/String;)Lcom/facebook/secure/context/ScopedIntentLauncher;

    .line 338
    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public withDomain(Ljava/lang/String;)Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/secure/context/ScopedIntentLauncher;->mCallerDomain:Ljava/lang/String;

    .line 53
    return-object p0
.end method
