.class Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$1;
.super Ljava/lang/Object;
.source "SpecialOfferRoadblockFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$1;->this$0:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment$1;->this$0:Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;->access$000(Lcom/oculus/horizon/store/roadblock/SpecialOfferRoadblockFragment;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
