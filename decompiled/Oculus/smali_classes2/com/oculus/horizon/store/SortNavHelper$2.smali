.class Lcom/oculus/horizon/store/SortNavHelper$2;
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

.field final synthetic val$priceButton:Landroid/view/View;

.field final synthetic val$storeSection:Lcom/oculus/horizon/store/StoreSection;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SortNavHelper;Landroid/content/Context;Landroid/view/View;Lcom/oculus/horizon/store/StoreSection;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->this$0:Lcom/oculus/horizon/store/SortNavHelper;

    iput-object p2, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$priceButton:Landroid/view/View;

    iput-object p4, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$storeSection:Lcom/oculus/horizon/store/StoreSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v1, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/horizon/store/SortNavHelper$2;->val$priceButton:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 216
    sget v1, Lcom/oculus/horizon/R$menu;->store_price_selector:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 217
    new-instance v1, Lcom/oculus/horizon/store/SortNavHelper$2$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/SortNavHelper$2$1;-><init>(Lcom/oculus/horizon/store/SortNavHelper$2;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 241
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 242
    return-void
.end method
