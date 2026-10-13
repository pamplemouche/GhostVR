.class Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;
.super Ljava/lang/Object;
.source "TextureMediaPlayerHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/media/TextureMediaPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Lcom/oculus/horizon/media/TextureMediaPlayerHelper$1;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;-><init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->play()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->pause()V

    goto :goto_0
.end method
