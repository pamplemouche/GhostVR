.class public LIQ0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIQ0;->w:LNQ0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LIQ0;->w:LNQ0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, LNQ0;->Q:Landroid/animation/Animator;

    .line 3
    invoke-virtual {p1}, LiM0;->dismiss()V

    return-void
.end method
