.class Lcom/oculus/horizon/store/StoreFragment$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment$1;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/oculus/horizon/widget/ExtendedScrollView;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment$1;->this$0:Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment;->access$000(Lcom/oculus/horizon/store/StoreFragment;)V

    .line 178
    return-void
.end method
