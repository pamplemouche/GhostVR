.class Lcom/oculus/standalone/StandaloneInitSetupListener$9;
.super Ljava/lang/Object;
.source "StandaloneInitSetupListener.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/standalone/StandaloneInitSetupListener;->maybeInitializeSetup()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;


# direct methods
.method constructor <init>(Lcom/oculus/standalone/StandaloneInitSetupListener;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "All pre-flight tasks completed, evaluating if setup-installs can now begin."

    .line 292
    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to continue setup due to failure in pre-flight tasks"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$700(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/util/device/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/util/device/DeviceUtils;->supportESig()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No errors found, trying to begin setup-installs."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$800(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->maybeBeginSetupInstallsProcess()V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->isPreloadsInstallerComplete()Z

    move-result v3

    .line 315
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getMofifiableHighPriAppList()Ljava/util/Set;

    move-result-object v0

    .line 316
    if-nez v0, :cond_8

    .line 317
    invoke-static {}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The high Priority Apps List is null after the fetch is complete!"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getCompletedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v4

    .line 322
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandalonePrefs;->getFailedPreloadInstallerApps()Ljava/util/Set;

    move-result-object v5

    .line 323
    const/4 v0, 0x0

    .line 325
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    .line 326
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 329
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v0, v2

    :goto_3
    move v2, v0

    .line 337
    goto :goto_2

    .line 330
    :cond_3
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 331
    if-eqz v3, :cond_4

    .line 332
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_3

    .line 334
    :cond_4
    const/4 v2, 0x1

    move v0, v2

    goto :goto_3

    .line 339
    :cond_5
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$200(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandalonePrefs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/standalone/StandalonePrefs;->setModifiableHighPriAppList(Ljava/util/Collection;)V

    .line 341
    if-nez v3, :cond_6

    if-nez v2, :cond_0

    .line 342
    :cond_6
    iget-object v0, p0, Lcom/oculus/standalone/StandaloneInitSetupListener$9;->this$0:Lcom/oculus/standalone/StandaloneInitSetupListener;

    invoke-static {v0}, Lcom/oculus/standalone/StandaloneInitSetupListener;->access$800(Lcom/oculus/standalone/StandaloneInitSetupListener;)Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/standalone/StandaloneDefaultAppSetupManager;->triggerSetupInstalls()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method
