.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$2;
.super Ljava/lang/Object;
.source "ProfilePictureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-static {v0, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;)V

    .line 145
    return-void
.end method
