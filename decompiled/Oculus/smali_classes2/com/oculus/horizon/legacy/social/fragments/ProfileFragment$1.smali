.class Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment$1;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/ProfileFragment;)V

    .line 88
    return-void
.end method
