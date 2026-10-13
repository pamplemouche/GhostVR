.class public LBd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public w:I

.field public x:I

.field public final synthetic y:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;LAd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBd0;->y:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, LBd0;->y:Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/gesturenav/NavigationBubble;->D:Landroid/widget/ImageView;

    .line 4
    iget v1, p0, LBd0;->w:I

    iget v2, p0, LBd0;->x:I

    .line 5
    invoke-static {v1, v2, p1}, LAO0;->a(IIF)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
