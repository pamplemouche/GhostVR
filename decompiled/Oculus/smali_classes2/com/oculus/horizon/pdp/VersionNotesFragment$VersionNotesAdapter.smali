.class public Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VersionNotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/VersionNotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionNotesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVersionNotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->mVersionNotes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->mVersionNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->onBindViewHolder(Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->mVersionNotes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;->bind(Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;)V

    .line 77
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 70
    sget v1, Lcom/oculus/horizon/R$layout;->version_notes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter$VersionNotesViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setVersionNotes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->mVersionNotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->mVersionNotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-void
.end method
