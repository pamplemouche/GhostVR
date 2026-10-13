.class Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "PlatformPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->enforcePartyChatStateConsistency()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 887
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error fetching current party, I don\'t know what to do. %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;)V
    .locals 5

    .prologue
    .line 850
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;->current_party:Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;->current_party:Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 853
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enforcePartyChatStateConsistency - User in a party."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p1, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;->current_party:Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;

    iget-object v0, v0, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 855
    if-nez v0, :cond_0

    .line 857
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to parse party id into long.  Party ID: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;->current_party:Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;

    iget-object v4, v4, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse$Party;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 856
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$600(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 864
    :try_start_0
    iget-object v2, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {v2}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$700(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 866
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enforcePartyChatStateConsistency - User is in party, but chat was not started.  Fixing."

    .line 865
    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    iget-object v1, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->startPartyChat(J)Landroid/os/Bundle;

    goto :goto_0

    .line 869
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 873
    :cond_2
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enforcePartyChatStateConsistency - User not in a party."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$600(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 875
    :try_start_2
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-static {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$700(Lcom/oculus/horizon/platformplugin/PlatformPluginManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    invoke-static {}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "enforcePartyChatStateConsistency - User is not in party, but chat was running.  Fixing."

    .line 876
    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 881
    iget-object v0, p0, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->this$0:Lcom/oculus/horizon/platformplugin/PlatformPluginManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->stopPartyChat()Landroid/os/Bundle;

    goto :goto_0

    .line 880
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 847
    check-cast p1, Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager$5;->onResponse(Lcom/oculus/horizon/social/api/UserGetCurrentPartyResponse;)V

    return-void
.end method
