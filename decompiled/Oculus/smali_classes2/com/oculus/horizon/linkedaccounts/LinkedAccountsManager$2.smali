.class Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;
.super Ljava/lang/Object;
.source "LinkedAccountsManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->queryLinkedAccountsAsync([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

.field final synthetic val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$000(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$100(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->val$serviceProviders:[Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->query([Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 110
    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v4, "user_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    const-string v5, "service_provider"

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v5

    .line 117
    sget-object v0, Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;->GOOGLE:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    if-ne v5, v0, :cond_2

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$2;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    .line 119
    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$300(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/accountlinking/google/GoogleAPIHelper;->refreshAccessTokenAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    .line 122
    :try_start_0
    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_2
    invoke-virtual {v0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    :goto_3
    new-instance v1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;

    invoke-direct {v1, v4, v0, v5}, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    invoke-static {}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Interrupted while waiting on refreshAccessTokenAsync"

    invoke-static {v6, v1, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_3
.end method
