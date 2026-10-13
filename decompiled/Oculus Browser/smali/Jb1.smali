.class public LJb1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic w:Lorg/chromium/third_party/android/media/MediaController;


# direct methods
.method public constructor <init>(Lorg/chromium/third_party/android/media/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJb1;->w:Lorg/chromium/third_party/android/media/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LJb1;->w:Lorg/chromium/third_party/android/media/MediaController;

    invoke-static {p1}, Lorg/chromium/third_party/android/media/MediaController;->b(Lorg/chromium/third_party/android/media/MediaController;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, LJb1;->w:Lorg/chromium/third_party/android/media/MediaController;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lorg/chromium/third_party/android/media/MediaController;->B:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, LJb1;->w:Lorg/chromium/third_party/android/media/MediaController;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lorg/chromium/third_party/android/media/MediaController;->B:Z

    return-void
.end method
