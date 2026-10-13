.class Lcom/oculus/horizon/settings/InternalSettingsFragment$18;
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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/InternalSettingsFragment;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$18;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/react/HorizonReactModule$UL_id;->$ul_$xXXcom_oculus_horizon_react_OculusReactNativeLauncher$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$18;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->access$200(Lcom/oculus/horizon/settings/InternalSettingsFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/react/OculusReactNativeLauncher;

    .line 377
    invoke-static {}, Lcom/oculus/horizon/react/ReactScreenDescription;->createPlayground()Lcom/oculus/horizon/react/ReactScreenDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/InternalSettingsFragment$18;->this$0:Lcom/oculus/horizon/settings/InternalSettingsFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/settings/InternalSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/react/OculusReactNativeLauncher;->launchReactActivity(Lcom/oculus/horizon/react/ReactScreenDescription;Landroid/content/Context;)V

    .line 378
    return-void
.end method
