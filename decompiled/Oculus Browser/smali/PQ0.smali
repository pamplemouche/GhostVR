.class public LPQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic w:LQQ0;


# direct methods
.method public constructor <init>(LQQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPQ0;->w:LQQ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LPQ0;->w:LQQ0;

    .line 2
    invoke-virtual {p1}, LQQ0;->b()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
