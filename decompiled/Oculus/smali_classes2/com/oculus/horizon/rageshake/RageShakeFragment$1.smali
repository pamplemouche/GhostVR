.class Lcom/oculus/horizon/rageshake/RageShakeFragment$1;
.super Ljava/lang/Object;
.source "RageShakeFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/rageshake/RageShakeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/rageshake/RageShakeFragment;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$1;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    packed-switch p2, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 41
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$1;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-static {v1}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->access$000(Lcom/oculus/horizon/rageshake/RageShakeFragment;)V

    .line 42
    iget-object v1, p0, Lcom/oculus/horizon/rageshake/RageShakeFragment$1;->this$0:Lcom/oculus/horizon/rageshake/RageShakeFragment;

    invoke-static {v1, v0}, Lcom/oculus/horizon/rageshake/RageShakeFragment;->access$102(Lcom/oculus/horizon/rageshake/RageShakeFragment;Z)Z

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
