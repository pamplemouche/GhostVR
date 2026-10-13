.class Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;
.super Ljava/lang/Object;
.source "LinkedAccountsManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->deleteLinkedAccountsAsync([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

.field final synthetic val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$000(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deleting linked accounts requires a logged in context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    .line 159
    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$100(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->query([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 162
    const-string v3, "token"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string v4, "service_provider"

    .line 165
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v0

    .line 166
    iget-object v4, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v4, v0, v3}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$500(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    :try_start_0
    invoke-static {v1}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 177
    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while waiting on revokeTokenAsyncTasks"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$100(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v1

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 182
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->delete([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$3;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
