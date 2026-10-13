.class public Lt0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lu0;


# direct methods
.method public constructor <init>(Lu0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt0;->x:Lu0;

    iput p2, p0, Lt0;->w:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lt0;->x:Lu0;

    iget v0, p0, Lt0;->w:I

    iput v0, p1, Lu0;->z:I

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lu0;->A:F

    return-void
.end method
