.class Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;
.super Ljava/lang/Object;
.source "ReviewSortFilterMenuViewHolder.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->setFilterMenuModel(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Predicate",
        "<",
        "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
        "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$4;->$SwitchMap$com$oculus$horizon$pdp$view$ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum:[I

    iget-object v1, p1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-object p1

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$800(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AndroidBinary;->id:Ljava/lang/String;

    iput-object v0, p1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->data:Ljava/lang/String;

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$3;->function(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v0

    return-object v0
.end method
