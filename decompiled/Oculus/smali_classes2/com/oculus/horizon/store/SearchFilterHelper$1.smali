.class Lcom/oculus/horizon/store/SearchFilterHelper$1;
.super Ljava/lang/Object;
.source "SearchFilterHelper.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SearchFilterHelper;->setUpMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SearchFilterHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SearchFilterHelper;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$000(Lcom/oculus/horizon/store/SearchFilterHelper;)Lcom/oculus/horizon/store/StoreSearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 84
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    .line 87
    invoke-static {v3}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$100(Lcom/oculus/horizon/store/SearchFilterHelper;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;

    invoke-direct {v4, p0, v0}, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;-><init>(Lcom/oculus/horizon/store/SearchFilterHelper$1;Ljava/lang/String;)V

    .line 86
    invoke-static {v3, v4}, Lcom/oculus/util/collection/CollectionUtil;->findFirst(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Filter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    .line 94
    if-nez v0, :cond_1

    move v0, v2

    .line 95
    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, v0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->display_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v3}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$200(Lcom/oculus/horizon/store/SearchFilterHelper;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    move-result-object v3

    iget-object v3, v3, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->display_name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v2}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$300(Lcom/oculus/horizon/store/SearchFilterHelper;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v2}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$400(Lcom/oculus/horizon/store/SearchFilterHelper;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v2

    iget-object v3, v0, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportSortFilterClicked(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v2, v0}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$202(Lcom/oculus/horizon/store/SearchFilterHelper;Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$000(Lcom/oculus/horizon/store/SearchFilterHelper;)Lcom/oculus/horizon/store/StoreSearchFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {v2}, Lcom/oculus/horizon/store/SearchFilterHelper;->access$200(Lcom/oculus/horizon/store/SearchFilterHelper;)Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreSearchFragment;->updateFilter(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)V

    move v0, v1

    .line 106
    goto :goto_0
.end method
