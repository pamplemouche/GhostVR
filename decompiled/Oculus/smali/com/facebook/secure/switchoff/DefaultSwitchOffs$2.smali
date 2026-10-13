.class final Lcom/facebook/secure/switchoff/DefaultSwitchOffs$2;
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->access$000()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->access$000()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;

    move-result-object v0

    return-object v0
.end method

.method public shouldCheckSwitch()Z
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->access$000()Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->shouldCheckSwitch()Z

    move-result v0

    return v0
.end method
