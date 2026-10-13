.class Lcom/facebook/secure/switchoff/DefaultSwitchOffs$LoadingIntentSwitchOff;
.super Lcom/facebook/secure/switchoff/IntentSwitchOff;
.source "DefaultSwitchOffs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/switchoff/DefaultSwitchOffs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingIntentSwitchOff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/secure/switchoff/IntentSwitchOff",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/facebook/secure/switchoff/IntentSwitchOff;-><init>(Lcom/facebook/secure/switchoff/IntentSwitchOff$Config;)V

    .line 113
    return-void
.end method


# virtual methods
.method public check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p1}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->access$100(Landroid/content/Context;)V

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z
    .locals 1
    .param p4    # Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Landroid/content/Intent;",
            "Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/facebook/secure/switchoff/DefaultSwitchOffs;->access$100(Landroid/content/Context;)V

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/secure/switchoff/IntentSwitchOff;->check(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/intentparser/IntentParser$ParsedIntent;)Z

    move-result v0

    return v0
.end method

.method protected kill(Ljava/lang/Object;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method
