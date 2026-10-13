.class Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OculusPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mItem:Landroid/view/View;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->mItem:Landroid/view/View;

    .line 193
    sget v0, Lcom/oculus/horizon/R$id;->custom_popup_menu_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 194
    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->mItem:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/MenuItem;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method
