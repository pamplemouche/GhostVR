.class Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;
.super Ljava/lang/Object;
.source "TaskBarViewV1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->initialize(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeSharedStateV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;->this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;->this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->access$000(Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logButtonClick(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1$1;->this$0:Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;

    check-cast p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/TaskBarViewV1;->selectMasterMenuButton(Lcom/oculus/panelapp/anytimeui/AnytimeUIButton;)V

    return-void
.end method
