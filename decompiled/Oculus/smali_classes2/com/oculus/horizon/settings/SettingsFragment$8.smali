.class Lcom/oculus/horizon/settings/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsFragment$8;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    .line 252
    invoke-static {v1}, Lcom/oculus/horizon/settings/SettingsFragment;->access$800(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newBluetoothSettingsFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 254
    return-void
.end method
