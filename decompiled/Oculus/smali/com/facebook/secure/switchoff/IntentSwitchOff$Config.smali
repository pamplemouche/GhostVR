.class public interface abstract Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
.super Ljava/lang/Object;
.source "IntentSwitchOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/switchoff/IntentSwitchOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# virtual methods
.method public abstract getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;
.end method

.method public abstract getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;
.end method

.method public abstract shouldCheckSwitch()Z
.end method
