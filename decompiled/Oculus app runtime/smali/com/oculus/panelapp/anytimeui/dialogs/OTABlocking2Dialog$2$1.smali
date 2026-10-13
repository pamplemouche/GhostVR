.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;
.super Ljava/lang/Object;
.source "OTABlocking2Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    iget-object v0, v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2$1;->this$1:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;

    iget-object v1, v1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
