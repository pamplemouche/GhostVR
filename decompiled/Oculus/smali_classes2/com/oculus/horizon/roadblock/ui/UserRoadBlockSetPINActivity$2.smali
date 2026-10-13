.class Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$2;
.super Ljava/lang/Object;
.source "UserRoadBlockSetPINActivity.java"

# interfaces
.implements Lcom/oculus/horizon/widget/EditPIN$OnInputChangedListener;


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
    .line 64
    iput-object p1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity$2;->this$0:Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;

    invoke-static {v1}, Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;->access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadBlockSetPINActivity;)Lcom/oculus/horizon/widget/NumericKeyboard;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/NumericKeyboard;->toggleDeleteButton(Z)V

    .line 70
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
