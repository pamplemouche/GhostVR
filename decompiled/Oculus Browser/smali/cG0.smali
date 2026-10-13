.class public LcG0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LdG0;


# direct methods
.method public constructor <init>(LdG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LcG0;->w:LdG0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LcG0;->w:LdG0;

    .line 2
    iget-object v0, p1, LdG0;->m:Landroid/view/View;

    .line 3
    iget-object p1, p1, LdG0;->q:Landroid/view/View$OnLayoutChangeListener;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5
    iget-object p1, p0, LcG0;->w:LdG0;

    iget-object v0, p1, LdG0;->j:Landroid/view/ViewGroup;

    iget-object p1, p1, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
