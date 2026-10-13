.class Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;
.super Ljava/lang/Object;
.source "OxygenSettingsFragment.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->queryFirstPartySettingsAsync(Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

.field final synthetic val$ct:Lbolts/CancellationToken;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;Lbolts/CancellationToken;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->val$ct:Lbolts/CancellationToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v0}, Lbolts/CancellationToken;->throwIfCancellationRequested()V

    .line 138
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v2

    .line 141
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->access$100(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)Lbolts/CancellationTokenSource;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/CancellationToken;->throwIfCancellationRequested()V

    .line 147
    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->this$0:Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-static {v1, v0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->access$200(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)V

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
