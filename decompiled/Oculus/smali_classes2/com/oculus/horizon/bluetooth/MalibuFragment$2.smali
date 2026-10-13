.class Lcom/oculus/horizon/bluetooth/MalibuFragment$2;
.super Ljava/lang/Object;
.source "MalibuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/MalibuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/MalibuFragment;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->getState()Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/oculus/horizon/bluetooth/MalibuFragment$3;->$SwitchMap$com$oculus$horizon$bluetooth$MalibuPresenter$State:[I

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state for state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->enableBluetooth(Landroidx/fragment/app/Fragment;I)V

    .line 114
    :goto_0
    return-void

    .line 109
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->startScan(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
