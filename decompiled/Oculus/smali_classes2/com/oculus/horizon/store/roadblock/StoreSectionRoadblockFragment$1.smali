.class Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;
.super Ljava/lang/Object;
.source "StoreSectionRoadblockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;
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
    .line 64
    iput-object p1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;->this$0:Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$000(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    const-string v2, "_CANCEL"

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->access$100(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
