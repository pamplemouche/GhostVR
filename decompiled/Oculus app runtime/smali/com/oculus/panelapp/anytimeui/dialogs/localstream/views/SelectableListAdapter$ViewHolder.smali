.class Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectableListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mTextPrimary:Landroid/widget/TextView;

.field private final mTextSecondary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;Landroid/view/View;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    .line 124
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_item_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 126
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_item_text_primary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextPrimary:Landroid/widget/TextView;

    .line 127
    sget p1, Lcom/oculus/panelapp/anytimeui/R$id;->local_stream_item_text_secondary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextSecondary:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;

    invoke-static {p1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;->access$400(Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter;Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;)V

    return-void
.end method

.method setImageResource(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method setTextPrimary(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTextSecondary(Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextSecondary:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextSecondary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/localstream/views/SelectableListAdapter$ViewHolder;->mTextSecondary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
