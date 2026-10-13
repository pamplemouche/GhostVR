.class Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;
.super Ljava/lang/Object;
.source "UserRoadBlockSetPINActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)Lcom/oculus/horizon/widget/EditPIN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/EditPIN;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$1;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-static {v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)V

    .line 58
    :cond_0
    return-void
.end method
