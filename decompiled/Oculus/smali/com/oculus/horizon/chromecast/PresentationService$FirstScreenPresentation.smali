.class Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;
.super Lcom/google/android/gms/cast/CastPresentation;
.source "PresentationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/chromecast/PresentationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstScreenPresentation"
.end annotation


# instance fields
.field mCaptureSurface:Landroid/view/Surface;

.field mStaticContent:Landroid/view/View;

.field mStreamedContent:Landroid/view/View;

.field final synthetic this$0:Lcom/oculus/horizon/chromecast/PresentationService;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/chromecast/PresentationService;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->this$0:Lcom/oculus/horizon/chromecast/PresentationService;

    .line 123
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/cast/CastPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/google/android/gms/cast/CastPresentation;->onCreate(Landroid/os/Bundle;)V

    .line 135
    sget v0, Lcom/oculus/horizon/R$layout;->cast_layout:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->setContentView(I)V

    .line 137
    sget v0, Lcom/oculus/horizon/R$id;->cast_surface_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 138
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mCaptureSurface:Landroid/view/Surface;

    .line 140
    sget v0, Lcom/oculus/horizon/R$id;->cast_static_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStaticContent:Landroid/view/View;

    .line 141
    sget v0, Lcom/oculus/horizon/R$id;->cast_streamed_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStreamedContent:Landroid/view/View;

    .line 143
    const-string v0, "com.oculus.chromecast_stop_streaming"

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->updateVisibility(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method updateVisibility(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 147
    const-string v0, "com.oculus.chromecast_start_streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStaticContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStreamedContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "com.oculus.chromecast_stop_streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStaticContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/chromecast/PresentationService$FirstScreenPresentation;->mStreamedContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
