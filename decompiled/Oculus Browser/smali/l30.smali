.class public final synthetic Ll30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lm30;


# direct methods
.method public constructor <init>(Lm30;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll30;->a:Lm30;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ll30;->a:Lm30;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1
    iget-object v0, v0, Lm30;->c:Lp30;

    .line 2
    iget-object v0, v0, Lp30;->B:Lr30;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Lr30;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object v0, v0, Lr30;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lr30;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 6
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 v1, 0xda

    .line 8
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 9
    :goto_0
    iget-object v1, v0, Lr30;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iput-object p1, v0, Lr30;->f:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method
