.class public Lmd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnd1;


# instance fields
.field public final a:Landroid/graphics/drawable/Animatable2;

.field public final b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Animatable2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmd1;->a:Landroid/graphics/drawable/Animatable2;

    .line 3
    new-instance v0, Lld1;

    invoke-direct {v0, p0, p1}, Lld1;-><init>(Lmd1;Landroid/graphics/drawable/Animatable2;)V

    iput-object v0, p0, Lmd1;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmd1;->c:Z

    .line 2
    iget-object v0, p0, Lmd1;->a:Landroid/graphics/drawable/Animatable2;

    iget-object v1, p0, Lmd1;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 3
    iget-object v0, p0, Lmd1;->a:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmd1;->c:Z

    .line 2
    iget-object v0, p0, Lmd1;->a:Landroid/graphics/drawable/Animatable2;

    iget-object v1, p0, Lmd1;->b:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Animatable2;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 3
    iget-object v0, p0, Lmd1;->a:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->stop()V

    return-void
.end method
