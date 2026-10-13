.class Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;
.super Ljava/lang/Object;
.source "FriendViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Lcom/oculus/horizon/legacy/social/SocialDialogFactory;Lcom/oculus/horizon/social/SocialUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;->access$100(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    sget v0, Lcom/oculus/horizon/R$menu;->social_friend_of_friend:I

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 72
    new-instance v0, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1$1;-><init>(Lcom/oculus/horizon/legacy/social/view/FriendViewHolder$1;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 87
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 88
    return-void
.end method
