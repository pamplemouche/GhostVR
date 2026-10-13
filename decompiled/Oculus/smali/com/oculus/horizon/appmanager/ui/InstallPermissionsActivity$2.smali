.class Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$2;
.super Ljava/lang/Object;
.source "InstallPermissionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$2;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$2;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-static {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->access$000(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->onAcceptClick()V

    .line 105
    return-void
.end method
