.class public Lcom/oculus/horizon/pdp/VersionNotesFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "VersionNotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotes;,
        Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->VERSION_NOTES:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/VersionNotesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/VersionNotesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "version_notes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 35
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget v0, Lcom/oculus/horizon/R$layout;->version_notes_fragment:I

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    new-instance v3, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-direct {v3, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 43
    new-instance v1, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;

    invoke-direct {v1}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;-><init>()V

    .line 44
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/VersionNotesFragment$VersionNotesAdapter;->setVersionNotes(Ljava/util/List;)V

    .line 45
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 47
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/VersionNotesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_header_version_notes:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 59
    return-void
.end method
