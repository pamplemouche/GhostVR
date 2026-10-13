.class Lcom/oculus/horizon/settings/StoreOrdersFragment$1;
.super Ljava/lang/Object;
.source "StoreOrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreOrdersFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment$1;->this$0:Lcom/oculus/horizon/settings/StoreOrdersFragment;

    .line 98
    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->access$000(Lcom/oculus/horizon/settings/StoreOrdersFragment;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newStoreFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 101
    return-void
.end method
