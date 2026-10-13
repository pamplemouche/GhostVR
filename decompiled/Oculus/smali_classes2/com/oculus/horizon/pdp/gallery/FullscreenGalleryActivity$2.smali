.class Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "FullscreenGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->setup(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$2;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$2;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->access$000(Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;I)V

    .line 115
    return-void
.end method
