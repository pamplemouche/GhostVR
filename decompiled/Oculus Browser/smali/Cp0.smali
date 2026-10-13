.class public LCp0;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PG"


# instance fields
.field public final synthetic w:LKp0;


# direct methods
.method public constructor <init>(LKp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCp0;->w:LKp0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, LCp0;->w:LKp0;

    .line 2
    iget-object p1, p1, LKp0;->J:LGp0;

    const/4 v0, 0x1

    .line 3
    invoke-interface {p1, v0}, LGp0;->a(Z)V

    .line 4
    iget-object p1, p0, LCp0;->w:LKp0;

    invoke-virtual {p1}, LKp0;->performLongClick()Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, LCp0;->w:LKp0;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    iget-object p1, p0, LCp0;->w:LKp0;

    .line 3
    iget-object p1, p1, LKp0;->J:LGp0;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, LGp0;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method
