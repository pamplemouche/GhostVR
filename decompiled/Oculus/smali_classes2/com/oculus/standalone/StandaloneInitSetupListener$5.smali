.class Lcom/oculus/standalone/StandaloneInitSetupListener$5;
.super Ljava/lang/Object;
.source "StandaloneInitSetupListener.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneInitSetupListener;->fetchAndSetHighPriAppList()Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

.field final synthetic val$successCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneInitSetupListener;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    iput-object p2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->val$successCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandaloneInitSetupListener;->fetchSetupApps(Z)Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;->node:Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;

    iget-object v1, v1, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;->default_applications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    iget-object v0, v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;->node:Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;

    iget-object v0, v0, Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse$Node;->default_applications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 167
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "Failed to fetch the high-pri app list"

    .line 157
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v2, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v2}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$500(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v2

    const-string v3, "fetch_high_pri_wait_exception"

    invoke-virtual {v2, v3, v1, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    :goto_1
    return-object v5

    .line 170
    :cond_0
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully fetched high pri app list. Saving to internal prefs now. size: %d"

    .line 172
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 169
    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oculus/standalone/StandalonePrefs;->setHighPriorityAppsFetched(Z)V

    .line 178
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/standalone/StandalonePrefs;->setModifiableHighPriAppList(Ljava/util/Collection;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->val$successCapture:Lbolts/Capture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 181
    :cond_1
    const-string v0, "Got unexpected result from high pri download app list"

    .line 182
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v1}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$500(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v1

    const-string v2, "fetch_high_pri_wait_malformed"

    invoke-virtual {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneInitSetupListener$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
