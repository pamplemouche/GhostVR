.class Lcom/oculus/horizon/bluetooth/MalibuFragment$1;
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
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/MalibuFragment$1;->this$0:Lcom/oculus/horizon/bluetooth/MalibuFragment;

    iget-object v0, v0, Lcom/oculus/horizon/bluetooth/MalibuFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;->skip()V

    .line 92
    return-void
.end method
