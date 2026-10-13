.class Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;
.super Ljava/lang/Object;
.source "GuardianDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 573
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 575
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$200(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 576
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$100(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 577
    invoke-static {v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v5

    aget-boolean v3, v5, v3

    iget-object v5, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 578
    invoke-static {v5}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v5

    aget-boolean v5, v5, v2

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 579
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v2

    aget-boolean v6, v2, v4

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 580
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v2

    const/4 v4, 0x3

    aget-boolean v7, v2, v4

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 581
    invoke-static {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$300(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)[Z

    move-result-object v2

    const/4 v4, 0x4

    aget-boolean v8, v2, v4

    move v2, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 574
    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->submitGuardianSurvey(Ljava/lang/String;ZZZZZZ)V

    .line 582
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)V

    .line 583
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$500()Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->updateDialogContents(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$DialogType;)V

    goto :goto_1

    .line 585
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog$1;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionDialogResult(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
