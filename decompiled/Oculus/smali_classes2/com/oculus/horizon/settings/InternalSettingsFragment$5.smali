.class Lcom/oculus/horizon/settings/InternalSettingsFragment$5;
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

.field final synthetic val$storeOverridesRow:Lcom/oculus/horizon/widget/CustomSetting;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    iput-object p2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->val$storeOverridesRow:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$100(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v1

    sget-wide v2, Lcom/oculus/horizon/settings/MC$oculus_store;->enabled:J

    invoke-interface {v1, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_OculusReactNativeLauncher$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$200(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    .line 185
    invoke-static {}, Lcom/oculus/horizon/react/ReactScreenDescription;->createStoreOverride()Lcom/oculus/horizon/react/ReactScreenDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactActivity(Lcom/oculus/horizon/react/ReactScreenDescription;Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->val$storeOverridesRow:Lcom/oculus/horizon/widget/CustomSetting;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->isUseTestStores()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$000(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setUseTestStores(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 193
    iget-object v1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->val$storeOverridesRow:Lcom/oculus/horizon/widget/CustomSetting;

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$5;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    .line 194
    invoke-virtual {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_2

    sget v0, Lcom/oculus/horizon/R$string;->setting_enabled:I

    .line 195
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :cond_2
    sget v0, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto :goto_1
.end method
