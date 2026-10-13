.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;
.super Ljava/lang/Object;
.source "ProfilePicturePreselectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getView(Landroid/widget/GridLayout;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

.field final synthetic val$positionInAdapter:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->val$positionInAdapter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->this$1:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;->val$positionInAdapter:I

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->access$1000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;Landroid/view/View;I)V

    .line 380
    return-void
.end method
