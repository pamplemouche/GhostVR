.class Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "OculusPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/OculusPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->mMenu:Landroid/view/Menu;

    .line 205
    return-void
.end method

.method private onBindViewHolder(Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;I)V
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->bind(Landroid/view/MenuItem;)V

    .line 246
    return-void
.end method

.method private onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    sget v1, Lcom/oculus/horizon/R$layout;->custom_popup_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 219
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 225
    if-nez p2, :cond_0

    .line 226
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;->access$300(Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;)Landroid/view/View;

    move-result-object p2

    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->onBindViewHolder(Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;I)V

    .line 235
    return-object p2

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter$ViewHolder;

    goto :goto_0
.end method
