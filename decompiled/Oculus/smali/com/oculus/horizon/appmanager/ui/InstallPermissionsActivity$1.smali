.class Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;
.super Ljava/lang/Object;
.source "InstallPermissionsActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


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
    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-virtual {v2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-static {v2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->access$100(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-static {v3}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->access$000(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsPresenter;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity$1;->this$0:Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;

    invoke-static {v2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->access$200(Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    return-void

    :cond_2
    move v0, v1

    .line 85
    goto :goto_0
.end method
