.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment$1;
.super Ljava/lang/Object;
.source "UserRoadblockProfileIntroFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockProfileIntroFragment;->onRoadblockCompleted()V

    .line 33
    return-void
.end method
