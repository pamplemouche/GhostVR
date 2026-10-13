.class Lcom/oculus/horizon/store/StoreFragment$4;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->updateTakeoverViews(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;

.field final synthetic val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreItemModel;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$4;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    instance-of v0, v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$4;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 459
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v0, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$4;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 460
    invoke-static {v2}, Lcom/oculus/horizon/store/StoreFragment;->access$100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    sget-object v3, Lcom/oculus/horizon/logging/TrackingViews$View;->NOT_SET:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 458
    invoke-static {v1, v0, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    instance-of v0, v0, Lcom/oculus/horizon/store/StoreBannerModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    check-cast v0, Lcom/oculus/horizon/store/StoreBannerModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$4;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 466
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v0, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$4;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    .line 467
    invoke-static {v1}, Lcom/oculus/horizon/store/StoreFragment;->access$100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment$4;->val$takeoverItem:Lcom/oculus/horizon/store/StoreItemModel;

    check-cast v1, Lcom/oculus/horizon/store/StoreBannerModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-static {v2, v0, v1, v3}, Lcom/oculus/horizon/store/StoreUtils;->openCategory(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
