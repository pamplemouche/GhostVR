.class public LvK0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LzK0;


# direct methods
.method public constructor <init>(LzK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvK0;->w:LzK0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LvK0;->w:LzK0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, LzK0;->b:Landroid/animation/ObjectAnimator;

    return-void
.end method
