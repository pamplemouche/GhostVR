.class Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$2;
.super Ljava/lang/Object;
.source "ProfilePictureRoadblockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment$2;->this$0:Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/ProfilePictureRoadblockFragment;->onRoadblockCompleted()V

    .line 91
    return-void
.end method
