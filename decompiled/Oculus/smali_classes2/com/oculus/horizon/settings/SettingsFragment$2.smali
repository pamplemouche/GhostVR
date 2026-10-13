.class Lcom/oculus/horizon/settings/SettingsFragment$2;
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
    .line 151
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$000(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    sget-wide v2, Lcom/oculus/horizon/settings/MC$qe_oculus_horizon_react_privacy_settings;->show_react:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_OculusReactNativeLauncher$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/SettingsFragment;->access$100(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    .line 157
    invoke-static {}, Lcom/oculus/horizon/react/ReactScreenDescription;->createPrivacySettings()Lcom/oculus/horizon/react/ReactScreenDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactActivity(Lcom/oculus/horizon/react/ReactScreenDescription;Landroid/content/Context;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$200(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/oculus/perflogs/OculusPerformanceLogger;

    move-result-object v0

    const v1, 0xeb0002

    invoke-interface {v0, v1}, Lcom/oculus/perflogs/OculusPerformanceLogger;->markerStart(I)V

    .line 160
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsFragment$2;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v1, Lcom/oculus/horizon/settings/PrivacySettingsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/settings/PrivacySettingsFragment;-><init>()V

    .line 161
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_0
.end method
