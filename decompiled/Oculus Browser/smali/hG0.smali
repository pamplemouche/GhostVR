.class public LhG0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field public final synthetic w:LjG0;


# direct methods
.method public constructor <init>(LjG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhG0;->w:LjG0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2
    iget-object v0, p0, LhG0;->w:LjG0;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return p1
.end method
