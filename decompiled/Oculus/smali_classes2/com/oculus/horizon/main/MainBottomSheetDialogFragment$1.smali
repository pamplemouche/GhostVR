.class Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;
.super Ljava/lang/Object;
.source "MainBottomSheetDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;->this$0:Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;->this$0:Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->access$000(Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment$1;->this$0:Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainBottomSheetDialogFragment;->dismiss()V

    .line 54
    return-void
.end method
