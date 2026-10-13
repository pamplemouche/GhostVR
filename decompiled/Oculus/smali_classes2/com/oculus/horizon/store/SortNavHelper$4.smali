.class Lcom/oculus/horizon/store/SortNavHelper$4;
.super Ljava/lang/Object;
.source "SortNavHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SortNavHelper;->onViewCreated(Landroid/view/View;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreSectionFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SortNavHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sortButton:Landroid/view/View;

.field final synthetic val$storeSection:Lcom/oculus/horizon/store/StoreSection;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SortNavHelper;Landroid/content/Context;Landroid/view/View;Lcom/oculus/horizon/store/StoreSection;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    iput-object p2, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$sortButton:Landroid/view/View;

    iput-object p4, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 305
    new-instance v1, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->val$sortButton:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lcom/oculus/horizon/store/SortNavHelper$4;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {v0}, Lcom/oculus/horizon/store/SortNavHelper;->access$900(Lcom/oculus/horizon/store/SortNavHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/SortOptionModel;

    .line 307
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v0, v0, Lcom/oculus/horizon/store/SortOptionModel;->displayName:Ljava/lang/String;

    invoke-interface {v3, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Lcom/oculus/horizon/store/SortNavHelper$4$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/store/SortNavHelper$4$1;-><init>(Lcom/oculus/horizon/store/SortNavHelper$4;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 332
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 333
    return-void
.end method
