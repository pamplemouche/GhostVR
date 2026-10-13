.class Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;
.super Ljava/lang/Object;
.source "StoreSectionRoadblockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$200(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$000(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/model/StoreRoadblockModel;->key:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$000(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    const-string v2, "_CONTINUE"

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$100(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_store_section_continue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    .line 119
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    .line 120
    invoke-virtual {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_store_items_list_continue"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 121
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "extra_store_item_continue"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/store/StoreItemModel;

    .line 122
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 124
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    .line 125
    invoke-virtual {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    .line 126
    invoke-static {v3}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$300(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v3

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-static {v1, v3, v0, v4}, Lcom/oculus/horizon/store/StoreUtils;->openCategory(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->dismiss()V

    .line 137
    return-void

    .line 129
    :cond_1
    if-eqz v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    .line 132
    invoke-virtual {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "extra_referral_view"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/oculus/horizon/logging/TrackingViews$View;->fromStringWithDefaults(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    .line 134
    invoke-virtual {v2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v3}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$300(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v3

    .line 133
    invoke-static {v2, v3, v1, v0}, Lcom/oculus/horizon/store/StoreUtils;->navigateFromStoreItemModel(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0
.end method
