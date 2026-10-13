.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;
.super Ljava/lang/Object;
.source "OTABlocking2Dialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->access$000(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlocking2Dialog;->updateHighPriAppsProgress()V

    :cond_0
    return-void
.end method
