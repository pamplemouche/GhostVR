.class Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;
.super Ljava/lang/Object;
.source "AnytimeUIAndroidPanelAppBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->onPermissions(ZZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field final synthetic val$dialog:Landroid/view/View;

.field final synthetic val$permissions:Lcom/oculus/vrshell/ShellPermissions;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Landroid/view/View;Lcom/oculus/vrshell/ShellPermissions;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;->val$dialog:Landroid/view/View;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;->val$permissions:Lcom/oculus/vrshell/ShellPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;->val$dialog:Landroid/view/View;

    check-cast v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase$2;->val$permissions:Lcom/oculus/vrshell/ShellPermissions;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;->onPermissions(Lcom/oculus/vrshell/ShellPermissions;)V

    return-void
.end method
