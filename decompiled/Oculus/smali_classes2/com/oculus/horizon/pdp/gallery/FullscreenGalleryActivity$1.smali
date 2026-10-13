.class Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$1;
.super Ljava/lang/Object;
.source "FullscreenGalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 82
    iput-object p1, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$1;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity$1;->this$0:Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/gallery/FullscreenGalleryActivity;->finish()V

    .line 86
    return-void
.end method
