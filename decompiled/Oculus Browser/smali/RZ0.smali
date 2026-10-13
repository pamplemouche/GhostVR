.class public LRZ0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/widget/PopupWindow;

.field public final synthetic x:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRZ0;->w:Landroid/widget/PopupWindow;

    iput-object p2, p0, LRZ0;->x:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, LQZ0;

    invoke-direct {v0, p0}, LQZ0;-><init>(LRZ0;)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
