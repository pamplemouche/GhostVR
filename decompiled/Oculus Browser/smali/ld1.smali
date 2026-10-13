.class public Lld1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Animatable2;

.field public final synthetic b:Lmd1;


# direct methods
.method public constructor <init>(Lmd1;Landroid/graphics/drawable/Animatable2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lld1;->b:Lmd1;

    iput-object p2, p0, Lld1;->a:Landroid/graphics/drawable/Animatable2;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lld1;->b:Lmd1;

    iget-object v0, p0, Lld1;->a:Landroid/graphics/drawable/Animatable2;

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lkd1;

    invoke-direct {v1, p1, v0}, Lkd1;-><init>(Lmd1;Landroid/graphics/drawable/Animatable2;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
