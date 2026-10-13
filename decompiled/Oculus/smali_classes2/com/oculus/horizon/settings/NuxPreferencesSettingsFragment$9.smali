.class Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;
.super Ljava/lang/Object;
.source "NuxPreferencesSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->access$100(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->access$1000(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setHasSeenFocus(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    sget-object v1, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;->TYPE_FOCUS:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;

    iget-object v2, p0, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment$9;->this$0:Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;

    .line 180
    invoke-static {v2}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->access$1000(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;)Lcom/oculus/horizon/widget/SwitchButtonSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/SwitchButtonSetting;->isChecked()Z

    move-result v2

    .line 179
    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;->access$200(Lcom/oculus/horizon/settings/NuxPreferencesSettingsFragment;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMutationParams$PreferenceType;Z)V

    .line 181
    return-void
.end method
