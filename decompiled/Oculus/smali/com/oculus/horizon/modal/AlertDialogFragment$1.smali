.class Lcom/oculus/horizon/modal/AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/modal/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/modal/AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    const-class v1, Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;

    invoke-static {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$200(Lcom/oculus/horizon/modal/AlertDialogFragment;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;

    .line 185
    if-eqz v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTargetRequestCode()I

    move-result v1

    .line 187
    iget-object v2, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-interface {v0, v2, v1, p2}, Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;->onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V

    .line 197
    :cond_0
    :goto_0
    return v3

    .line 192
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$300(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$300(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)Z

    goto :goto_0

    .line 194
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$400(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/modal/AlertDialogFragment$1;->this$0:Lcom/oculus/horizon/modal/AlertDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment;->access$400(Lcom/oculus/horizon/modal/AlertDialogFragment;)Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;->onClick(Landroid/content/DialogInterface;I)Z

    goto :goto_0
.end method
