.class Lcom/oculus/horizon/store/SortNavHelper$2$1;
.super Ljava/lang/Object;
.source "SortNavHelper.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SortNavHelper$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/store/SortNavHelper$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SortNavHelper$2;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$000(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/StoreSectionFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v6

    .line 224
    :cond_1
    invoke-static {}, Lcom/oculus/horizon/store/SortNavHelper;->access$700()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$500(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$priceButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$300(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportPriceFilterClicked(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0, v4}, Lcom/oculus/horizon/store/SortNavHelper;->access$502(Lcom/oculus/horizon/store/SortNavHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v0, v0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$000(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/StoreSectionFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v1, v1, Lcom/oculus/horizon/store/SortNavHelper$2;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v2, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v2, v2, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 234
    invoke-static {v2}, Lcom/oculus/horizon/store/SortNavHelper;->access$400(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/SortOptionModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v2, v2, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v2}, Lcom/oculus/horizon/store/SortNavHelper;->access$400(Lcom/oculus/horizon/store/SortNavHelper;)Lcom/oculus/horizon/store/SortOptionModel;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/store/SortOptionModel;->sortOrder:Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v3, v3, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 235
    invoke-static {v3}, Lcom/oculus/horizon/store/SortNavHelper;->access$200(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/oculus/horizon/store/SortNavHelper$2$1;->this$1:Lcom/oculus/horizon/store/SortNavHelper$2;

    iget-object v5, v5, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    .line 237
    invoke-static {v5}, Lcom/oculus/horizon/store/SortNavHelper;->access$600(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreSectionFragment;->updateFilters(Lcom/oculus/horizon/store/StoreSection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method
