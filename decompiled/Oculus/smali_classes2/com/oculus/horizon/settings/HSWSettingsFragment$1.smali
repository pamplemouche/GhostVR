.class Lcom/oculus/horizon/settings/HSWSettingsFragment$1;
.super Ljava/lang/Object;
.source "HSWSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/HSWSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->hasSeenHSWVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    .line 75
    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v3

    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$100(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasOptedOutHSW(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    sget-object v3, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_OPT_OUT_HSW:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    iget-object v4, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    .line 80
    invoke-static {v4}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$100(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v1

    .line 78
    :cond_1
    invoke-static {v0, v3, v2}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$200(Lcom/oculus/horizon/settings/HSWSettingsFragment;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenHSWVideo(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->commit()Z

    .line 100
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 77
    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$100(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v3}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    .line 86
    invoke-virtual {v1}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->hsw_video_title:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v0, v1, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->hsw_video_confirmation_notice:I

    new-array v3, v2, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v1, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->hsw_video_confirmation_button:I

    .line 89
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->hsw_video_decline_link:I

    .line 90
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "acknowledge_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 84
    goto :goto_2

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$100(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v3}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$000(Lcom/oculus/horizon/settings/HSWSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/profile/UserProfileHelper;->getHasOptedOutHSW()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/HSWSettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/HSWSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/HSWSettingsFragment;->access$300(Lcom/oculus/horizon/settings/HSWSettingsFragment;)V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 97
    goto :goto_3
.end method
