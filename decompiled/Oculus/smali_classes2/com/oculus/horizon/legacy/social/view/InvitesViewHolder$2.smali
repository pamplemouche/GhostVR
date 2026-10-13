.class Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$2;
.super Ljava/lang/Object;
.source "InvitesViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/content/res/Resources;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder$2;->this$0:Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/InvitesViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->doOpenGameInvites()V

    .line 53
    return-void
.end method
