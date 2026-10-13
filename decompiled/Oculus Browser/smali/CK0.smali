.class public LCK0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:Landroid/graphics/drawable/ColorDrawable;

.field public final synthetic x:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCK0;->x:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    iput-object p2, p0, LCK0;->w:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, LCK0;->x:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->a0:Z

    .line 3
    iget-object v0, p0, LCK0;->w:Landroid/graphics/drawable/ColorDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, LAO0;->d(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->T:Z

    .line 6
    iget-object p1, p0, LCK0;->x:Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;

    .line 7
    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;->f0:LWo0;

    .line 8
    invoke-interface {p1}, LWo0;->k()V

    return-void
.end method
