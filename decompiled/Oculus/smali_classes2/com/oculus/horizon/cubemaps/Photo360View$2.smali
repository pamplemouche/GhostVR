.class Lcom/oculus/horizon/cubemaps/Photo360View$2;
.super Ljava/lang/Object;
.source "Photo360View.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cubemaps/Photo360View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cubemaps/Photo360View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cubemaps/Photo360View;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/cubemaps/Photo360View$2;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/cubemaps/Photo360View$2;->this$0:Lcom/oculus/horizon/cubemaps/Photo360View;

    invoke-static {v0}, Lcom/oculus/horizon/cubemaps/Photo360View;->access$200(Lcom/oculus/horizon/cubemaps/Photo360View;)V

    .line 119
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
