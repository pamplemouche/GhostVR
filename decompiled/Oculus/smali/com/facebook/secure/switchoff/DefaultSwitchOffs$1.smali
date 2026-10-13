.class final Lcom/facebook/secure/switchoff/DefaultSwitchOffs$1;
.super Ljava/lang/Object;
.source "DefaultSwitchOffs.java"

# interfaces
.implements Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/switchoff/DefaultSwitchOffs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/secure/switchoff/IntentMatcher;

    return-object v0
.end method

.method public getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/secure/switchoff/IntentCriteria;

    return-object v0
.end method

.method public shouldCheckSwitch()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
