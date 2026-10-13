.class final Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;
.super Ljava/lang/Object;
.source "DefaultSwitchOffs.java"

# interfaces
.implements Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->updateConfig([Lcom/facebook/secure/switchoff/IntentCriteria;[Lcom/facebook/secure/switchoff/IntentMatcher;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customIntentConfig:[Lcom/facebook/secure/switchoff/IntentMatcher;

.field final synthetic val$deeplinkConfig:Ljava/util/Map;

.field final synthetic val$intentCriteria:[Lcom/facebook/secure/switchoff/IntentCriteria;


# direct methods
.method constructor <init>([Lcom/facebook/secure/switchoff/IntentCriteria;[Lcom/facebook/secure/switchoff/IntentMatcher;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;->val$intentCriteria:[Lcom/facebook/secure/switchoff/IntentCriteria;

    iput-object p2, p0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;->val$customIntentConfig:[Lcom/facebook/secure/switchoff/IntentMatcher;

    iput-object p3, p0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;->val$deeplinkConfig:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;->val$customIntentConfig:[Lcom/facebook/secure/switchoff/IntentMatcher;

    return-object v0
.end method

.method public getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/secure/switchoff/DefaultSwitchOffs$3;->val$intentCriteria:[Lcom/facebook/secure/switchoff/IntentCriteria;

    return-object v0
.end method

.method public shouldCheckSwitch()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method
