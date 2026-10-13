.class public Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VersionNotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionNotesViewHolder"
.end annotation


# instance fields
.field private mChangeLogView:Landroid/widget/TextView;

.field private mReleaseDateView:Landroid/widget/TextView;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mVersionView:Landroid/widget/TextView;

    .line 99
    sget v0, Lcom/oculus/horizon/R$id;->release_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mReleaseDateView:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/oculus/horizon/R$id;->change_log:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mChangeLogView:Landroid/widget/TextView;

    .line 101
    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mVersionView:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->product_update_version:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->version:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mReleaseDateView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->releaseDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->mChangeLogView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;->changeLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method
