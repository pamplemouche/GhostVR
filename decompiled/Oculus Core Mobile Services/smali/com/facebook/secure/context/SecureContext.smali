.class public Lcom/facebook/secure/context/SecureContext;
.super Ljava/lang/Object;
.source "SecureContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static internal()Lcom/facebook/secure/context/ScopedIntentLauncher;
    .locals 1

    .prologue
    .line 295
    invoke-static {}, Lcom/facebook/secure/context/SecureContextHelper;->get()Lcom/facebook/secure/context/SecureContextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/secure/context/SecureContextHelper;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    return-object v0
.end method

.method public static launchInternalService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/facebook/secure/context/SecureContext;->internal()Lcom/facebook/secure/context/ScopedIntentLauncher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/secure/context/ScopedIntentLauncher;->launchService(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
