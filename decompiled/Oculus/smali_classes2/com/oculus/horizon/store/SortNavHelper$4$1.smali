.class Lcom/oculus/horizon/store/SortNavHelper$4$1;
.super Ljava/lang/Object;
.source "SortNavHelper.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SortNavHelper$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/store/SortNavHelper$4;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SortNavHelper$4;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$000(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/StoreSectionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v6

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v1, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$1000(Lcom/oculus/horizon/store/SortNavHelper;Ljava/lang/String;)Lcom/oculus/horizon/store/SortOptionModel;

    move-result-object v2

    .line 317
    iget-object v0, v2, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v1, v1, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v1}, Lcom/oculus/horizon/store/SortNavHelper;->access$400(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/SortOptionModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$sortButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v2, Lcom/oculus/horizon/store/SortOptionModel;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$300(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, v2, Lcom/oculus/horizon/store/SortOptionModel;->optionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportSortFilterClicked(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0, v2}, Lcom/oculus/horizon/store/SortNavHelper;->access$402(Lcom/oculus/horizon/store/SortNavHelper;Lcom/oculus/horizon/store/SortOptionModel;)Lcom/oculus/horizon/store/SortOptionModel;

    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$000(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/StoreSectionFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v1, v1, Lcom/oculus/horizon/store/SortNavHelper$4;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, v2, Lcom/oculus/horizon/store/SortOptionModel;->sortOrder:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v3, v3, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 326
    invoke-static {v3}, Lcom/oculus/horizon/store/SortNavHelper;->access$200(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v4, v4, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 327
    invoke-static {v4}, Lcom/oculus/horizon/store/SortNavHelper;->access$500(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/store/SortNavHelper$4$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$4;

    iget-object v5, v5, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 328
    invoke-static {v5}, Lcom/oculus/horizon/store/SortNavHelper;->access$600(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreSectionFragment;->updateFilters(Lcom/oculus/horizon/store/StoreSection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
