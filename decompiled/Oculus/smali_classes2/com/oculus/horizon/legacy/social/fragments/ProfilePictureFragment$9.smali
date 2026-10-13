.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;
.super Ljava/lang/Object;
.source "ProfilePictureFragment.java"

# interfaces
.implements Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->cropPicture(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

.field final synthetic val$cropBounds:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;->val$cropBounds:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$9;->val$cropBounds:Landroid/graphics/RectF;

    return-object v0
.end method
