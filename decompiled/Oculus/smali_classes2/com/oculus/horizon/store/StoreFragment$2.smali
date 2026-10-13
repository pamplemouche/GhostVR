.class Lcom/oculus/horizon/store/StoreFragment$2;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$2;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 196
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$2;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment$2;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 197
    invoke-static {v3}, Lcom/oculus/horizon/store/StoreFragment;->access$100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newLibraryFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->makeTopLevel()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 200
    return-void
.end method
