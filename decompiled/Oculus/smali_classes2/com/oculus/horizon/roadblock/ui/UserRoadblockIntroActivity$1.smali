.class Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;
.super Ljava/lang/Object;
.source "UserRoadblockIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;

.field final synthetic val$nextActivity:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;

    iput-object p2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->val$nextActivity:Landroid/content/Intent;

    iput p3, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->val$nextActivity:Landroid/content/Intent;

    iget v2, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity$1;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    return-void
.end method
