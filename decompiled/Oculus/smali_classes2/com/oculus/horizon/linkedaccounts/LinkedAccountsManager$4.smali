.class Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$4;
.super Ljava/lang/Object;
.source "LinkedAccountsManager.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;->createRevokeTokenAsyncTask(Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

.field final synthetic val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$4;->this$0:Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager;

    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$4;->val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$4;->val$serviceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/linkedaccounts/LinkedAccountsManager$4;->then(Lbolts/Task;)Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    move-result-object v0

    return-object v0
.end method
