.class Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$1;
.super Ljava/lang/Object;
.source "RefreshableSocialFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


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
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->refresh()V

    .line 48
    return-void
.end method
