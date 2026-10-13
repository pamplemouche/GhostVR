.class Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;
.super Ljava/lang/Object;
.source "AnytimeUIAndroidPanelAppBase.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->configureDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field final synthetic val$requestUri:Ljava/lang/String;

.field final synthetic val$route:Lcom/oculus/vrshell/SystemUXRoute;

.field final synthetic val$targetPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$route:Lcom/oculus/vrshell/SystemUXRoute;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$targetPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$requestUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Landroid/view/View;)V
    .locals 3

    .line 782
    instance-of v0, p1, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    if-eqz v0, :cond_2

    .line 783
    move-object v0, p1

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;

    .line 785
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$route:Lcom/oculus/vrshell/SystemUXRoute;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    if-ne v1, v2, :cond_0

    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    if-eqz v1, :cond_0

    .line 786
    move-object v1, v0

    check-cast v1, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;

    .line 787
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$targetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/GuardianDialog;->setExtra(Ljava/lang/String;)V

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$route:Lcom/oculus/vrshell/SystemUXRoute;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->EXIT_TO_HOME:Lcom/oculus/vrshell/SystemUXRoute;

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    if-eqz v1, :cond_1

    .line 791
    check-cast p1, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;

    .line 792
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->setTargetPackage(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Lcom/oculus/panelapp/anytimeui/dialogs/HomeDialog;->refreshScreenshot()V

    .line 794
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    const-string v1, "#main"

    invoke-static {p1, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->access$000(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V

    .line 797
    :cond_1
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$3;->val$requestUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;->configure(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
