.class Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "AchievementsHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder$1;->this$0:Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;->access$000(Lcom/oculus/horizon/legacy/social/view/AchievementsHeaderViewHolder;)Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/AchievementsFragmentAdapter;->openPdp()V

    .line 39
    return-void
.end method
