.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;
.super Ljava/lang/Object;
.source "ProfilePictureBottomSheetDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportClickAvatarEditor(Z)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.vrshell"

    const-string v3, "com.oculus.vrshell.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oculus.vrshell.home/.AvatarEditorService"

    .line 106
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/secure/context/SecureContext;->launchFamilyActivity(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->dismiss()V

    .line 119
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    const-string v1, "com.oculus.GearAvatarEditor"

    invoke-virtual {v0, v1}, Lcom/oculus/common/packagescache/PackagesCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportClickAvatarEditor(Z)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$400(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    const-string v1, "com.oculus.GearAvatarEditor"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportClickAvatarEditor(Z)V

    .line 114
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;

    .line 115
    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;->access$500(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureBottomSheetDialogFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v1

    const-string v2, "1265732843505431"

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newApplicationPdpFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_0
.end method
