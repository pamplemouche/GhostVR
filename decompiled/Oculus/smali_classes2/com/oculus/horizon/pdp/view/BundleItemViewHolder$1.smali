.class Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;
.super Ljava/lang/Object;
.source "BundleItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/View;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/horizon/logging/OculusLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

.field final synthetic val$factory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field final synthetic val$manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->val$factory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/store/BundleInstallationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->getBundleModel()Lcom/oculus/model/BundleModel;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 81
    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 82
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 83
    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v3

    .line 79
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->openInAppPdpFragment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 87
    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 88
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 89
    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v3

    .line 85
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->openInAppRentalPdpFragment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->val$factory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 93
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    .line 92
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreUtils;->openApplicationPdpFragment(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 97
    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 98
    invoke-static {v3}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    .line 99
    invoke-static {v4}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v4

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    invoke-static {v4}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v4

    .line 95
    invoke-static {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/store/StoreUtils;->openApplicationPdpFragmentFromBundle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/model/StyleTheme;Lcom/oculus/model/BundleModel;)V

    goto :goto_0
.end method
