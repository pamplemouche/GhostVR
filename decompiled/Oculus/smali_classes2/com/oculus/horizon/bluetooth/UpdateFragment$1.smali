.class Lcom/oculus/horizon/bluetooth/UpdateFragment$1;
.super Ljava/lang/Object;
.source "UpdateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/UpdateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/UpdateFragment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->getState()I

    move-result v0

    .line 119
    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->checkForUpdate()V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->startUpdate()V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/UpdateFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/UpdatePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/UpdatePresenter;->done()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
