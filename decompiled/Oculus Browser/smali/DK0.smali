.class public LDK0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar$InterceptTouchLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "CustomTabs.TapUrlBar"

    .line 3
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
