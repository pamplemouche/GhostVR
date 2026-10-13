.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "LocalMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment$1;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;->access$000(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaFragment;)Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 103
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
