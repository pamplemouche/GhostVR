.class Lcom/oculus/horizon/settings/InternalSettingsFragment$3;
.super Ljava/lang/Object;
.source "InternalSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/InternalSettingsFragment;->setupSettingsItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

.field final synthetic val$checkMinimumAppVersionRoadblock:Lcom/oculus/horizon/widget/CustomSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->val$checkMinimumAppVersionRoadblock:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->getShouldCheckForAppVersionRoadblock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setCheckAppVersionRoadblock(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->val$checkMinimumAppVersionRoadblock:Lcom/oculus/horizon/widget/CustomSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    .line 130
    invoke-virtual {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 131
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 133
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto :goto_1
.end method
