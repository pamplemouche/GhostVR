.class public abstract Lhf1;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final w:Landroid/graphics/Rect;

.field public x:Lgf1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhf1;->w:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhf1;->x:Lgf1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lgf1;->b()V

    :cond_0
    return-void
.end method

.method public abstract a(Lgf1;)V
.end method

.method public abstract b()V
.end method
