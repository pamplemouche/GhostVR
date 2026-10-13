.class public LFf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:LWf0;

.field public final synthetic x:LGf0;


# direct methods
.method public constructor <init>(LGf0;LWf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFf0;->x:LGf0;

    iput-object p2, p0, LFf0;->w:LWf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, LFf0;->w:LWf0;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2
    iget-object p1, p0, LFf0;->x:LGf0;

    iget-object p1, p1, LGf0;->b:LJf0;

    .line 3
    iget-object p1, p1, LJf0;->C:LAf0;

    .line 4
    invoke-virtual {p1}, LAf0;->a()V

    return-void
.end method
