.class Lcom/oculus/horizon/permission/PermissionDialogFragment$2;
.super Ljava/lang/Object;
.source "PermissionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/permission/PermissionDialogFragment;->onCreateExplanationDialog(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/permission/PermissionDialogFragment;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$2;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$2;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->access$200(Lcom/oculus/horizon/permission/PermissionDialogFragment;I)V

    .line 238
    return-void
.end method
