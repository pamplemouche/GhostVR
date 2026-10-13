.class Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;
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
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$000(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    const-string v2, "_CANCEL"

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$100(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->dismiss()V

    .line 105
    return-void
.end method
