.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;
.super Ljava/lang/Object;
.source "SocialPartyDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 89
    invoke-static {p2}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$300(I)F

    move-result p1

    .line 90
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "party volume set to: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    invoke-static {p2, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$500(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "newVolume"

    aput-object v3, v1, v2

    .line 99
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$300(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    const-string v2, "source"

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;

    .line 101
    invoke-static {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;->access$600(Lcom/oculus/panelapp/anytimeui/dialogs/SocialPartyDialog;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "party_dialog_change_volume"

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logSocialPartyEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
