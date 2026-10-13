.class Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;
.super Ljava/lang/Object;
.source "LinkedAccountsManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->insertLinkedAccountAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)Lbolts/Task;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

.field final synthetic val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$userID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$token:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$000(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/auth/credentials/CredentialsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/auth/credentials/CredentialsManager;->getCredentials()Lcom/oculus/auth/credentials/Credentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Inserting a linked account requires a logged in context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    invoke-static {v0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$100(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$userID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;->insert(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)J

    move-result-wide v0

    .line 77
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    iget-object v3, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-static {v2, v3}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->access$200(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V

    .line 81
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .line 67
    invoke-virtual {p0}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$1;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
