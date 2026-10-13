.class Lcom/oculus/horizon/settings/SettingsFragment$3;
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
    .line 169
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$000(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    sget-wide v2, Lcom/oculus/horizon/settings/MC$oculus_store;->enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_OculusReactNativeLauncher$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/SettingsFragment;->access$100(Lcom/oculus/horizon/settings/SettingsFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    .line 174
    invoke-static {}, Lcom/oculus/horizon/react/ReactScreenDescription;->createPurchaseHistory()Lcom/oculus/horizon/react/ReactScreenDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactActivity(Lcom/oculus/horizon/react/ReactScreenDescription;Landroid/content/Context;)V

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$300(Lcom/oculus/horizon/settings/SettingsFragment;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v1, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v1, Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/settings/StoreOrdersFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    .line 183
    invoke-static {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->access$400(Lcom/oculus/horizon/settings/SettingsFragment;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lcom/oculus/horizon/util/IDWebHelper;->getPurchaseHistoryUri(Ljava/util/Locale;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$3;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
