.class public abstract Lcom/facebook/secure/switchoff/IntentSwitchOff;
.super Ljava/lang/Object;
.source "IntentSwitchOff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EndpointType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;


# direct methods
.method public constructor <init>(Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/secure/switchoff/IntentSwitchOff;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    .line 18
    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TEndpointType;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z

    move-result v0

    return v0
.end method

.method public check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z
    .locals 5
    .param p4    # Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TEndpointType;",
            "Landroid/content/Intent;",
            "Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lcom/facebook/secure/switchoff/IntentSwitchOff;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    invoke-interface {v1}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->shouldCheckSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    iget-object v1, p0, Lcom/facebook/secure/switchoff/IntentSwitchOff;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    invoke-interface {v1}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->getCustomIntentConfig()[Lcom/facebook/secure/switchoff/IntentMatcher;

    move-result-object v1

    .line 54
    invoke-static {p2, p3, p4, v1}, Lcom/facebook/secure/switchoff/IntentMatcher;->matches(Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;[Lcom/facebook/secure/switchoff/IntentMatcher;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->kill(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 71
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/facebook/secure/switchoff/IntentSwitchOff;->mConfig:Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;

    invoke-interface {v1}, Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;->getIntentCriteria()[Lcom/facebook/secure/switchoff/IntentCriteria;

    move-result-object v2

    .line 64
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 65
    invoke-virtual {v4, p2, p3}, Lcom/facebook/secure/switchoff/IntentCriteria;->matchesEndpointNameAndIntentFilter(Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p0, p2, p3}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->kill(Ljava/lang/Object;Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract kill(Ljava/lang/Object;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndpointType;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation
.end method
