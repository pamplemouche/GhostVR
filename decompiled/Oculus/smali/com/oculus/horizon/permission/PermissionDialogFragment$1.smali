.class Lcom/oculus/horizon/permission/PermissionDialogFragment$1;
.super Ljava/lang/Object;
.source "PermissionDialogFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


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

.field final synthetic val$blocked:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/permission/PermissionDialogFragment;Z)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    iput-boolean p2, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->val$blocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 4

    .prologue
    .line 213
    packed-switch p2, :pswitch_data_0

    .line 230
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 215
    :pswitch_0
    iget-boolean v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->val$blocked:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->access$002(Lcom/oculus/horizon/permission/PermissionDialogFragment;Z)Z

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "package"

    iget-object v2, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->access$100(Lcom/oculus/horizon/permission/PermissionDialogFragment;)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/permission/PermissionDialogFragment$1;->this$0:Lcom/oculus/horizon/permission/PermissionDialogFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment;->access$200(Lcom/oculus/horizon/permission/PermissionDialogFragment;I)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
