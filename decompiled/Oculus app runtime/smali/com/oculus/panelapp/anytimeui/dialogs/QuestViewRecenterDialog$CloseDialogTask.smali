.class Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;
.super Ljava/util/TimerTask;
.source "QuestViewRecenterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseDialogTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;

    invoke-virtual {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->getPanelApp()Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
