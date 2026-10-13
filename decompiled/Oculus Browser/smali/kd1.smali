.class public final synthetic Lkd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lmd1;

.field public final x:Landroid/graphics/drawable/Animatable2;


# direct methods
.method public constructor <init>(Lmd1;Landroid/graphics/drawable/Animatable2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd1;->w:Lmd1;

    iput-object p2, p0, Lkd1;->x:Landroid/graphics/drawable/Animatable2;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkd1;->w:Lmd1;

    iget-object v1, p0, Lkd1;->x:Landroid/graphics/drawable/Animatable2;

    .line 1
    iget-boolean v0, v0, Lmd1;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable2;->start()V

    :cond_0
    return-void
.end method
