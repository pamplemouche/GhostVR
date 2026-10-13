.class public LM10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LN10;


# direct methods
.method public constructor <init>(LN10;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM10;->w:LN10;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, LM10;->w:LN10;

    const/4 v0, 0x0

    .line 2
    iput v0, p1, LN10;->z:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p1, LN10;->A:Landroid/animation/Animator;

    .line 4
    iput-boolean v0, p1, LN10;->E:Z

    return-void
.end method
