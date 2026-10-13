.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;
.super Ljava/lang/Object;
.source "OTABlocking2Dialog.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->updateHighPriAppsProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

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

    .line 115
    invoke-virtual {p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    .line 120
    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/vrshell/util/HorizonUtil;->getProfilePrefsMap(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "high_priority_apps_pkgs"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "$"

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$102(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {v0}, Lcom/oculus/vrshell/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$102(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;Ljava/util/List;)Ljava/util/List;

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)F

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 141
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "High priority app progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$302(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;F)F

    .line 145
    :cond_2
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;)V

    .line 146
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
