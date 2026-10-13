.class Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;
.super Ljava/lang/Object;
.source "TermsOfServiceRoadblockChecker.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;->checkAsync(Landroid/content/Context;Lcom/oculus/horizon/api/ApiRequestManager;)Lbolts/Task;
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
        "Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;

    iput-object p2, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;",
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
    .line 48
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;

    .line 49
    invoke-virtual {v0}, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;->hasNewTos()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->val$context:Landroid/content/Context;

    const-class v3, Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    const-string v2, "extra_tos_content"

    invoke-virtual {v0}, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;->getTos()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->this$0:Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;

    invoke-static {v0}, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;->access$000(Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker;)Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->val$context:Landroid/content/Context;

    .line 57
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushTosAcceptedSettingAsync(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2$1;-><init>(Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;)V

    .line 58
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

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
    .line 45
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceRoadblockChecker$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
