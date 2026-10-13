.class Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "RefreshableSocialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->canScroll()Z

    move-result v0

    return v0
.end method
