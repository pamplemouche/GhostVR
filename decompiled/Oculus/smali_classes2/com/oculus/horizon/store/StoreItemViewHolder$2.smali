.class Lcom/oculus/horizon/store/StoreItemViewHolder$2;
.super Ljava/lang/Object;
.source "StoreItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreItemViewHolder;->setOnTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreItemViewHolder;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$2;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    :pswitch_0
    return v3

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$2;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$2;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreItemViewHolder;->access$000(Lcom/oculus/horizon/store/StoreItemViewHolder;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder$2;->this$0:Lcom/oculus/horizon/store/StoreItemViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setColorFilter(I)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
