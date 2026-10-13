.class Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;
.super Ljava/lang/Object;
.source "OverrideGkDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$100(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$000(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/ConfigUpdater;->setGatekeeperOverride(Ljava/lang/String;Z)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->dismiss()V

    .line 80
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$100(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$000(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/config/updater/ConfigUpdater;->setGatekeeperOverride(Ljava/lang/String;Z)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$100(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;->this$0:Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v1}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->access$000(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/config/updater/ConfigUpdater;->clearGatekeeperOverride(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
