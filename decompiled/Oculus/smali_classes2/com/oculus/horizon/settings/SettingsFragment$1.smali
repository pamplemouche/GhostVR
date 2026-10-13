.class Lcom/oculus/horizon/settings/SettingsFragment$1;
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

.field final synthetic val$itemId:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/SettingsFragment;I)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/settings/SettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    iput p2, p0, Lcom/oculus/horizon/settings/SettingsFragment$1;->val$itemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 140
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/oculus/horizon/settings/SettingsFragment$1;->this$0:Lcom/oculus/horizon/settings/SettingsFragment;

    .line 143
    invoke-virtual {v0}, Lcom/oculus/horizon/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Lcom/oculus/horizon/settings/SettingsFragment;->SETTINGS_FRAGMENTS_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/oculus/horizon/settings/SettingsFragment$1;->val$itemId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 145
    return-void
.end method
