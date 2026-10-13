.class public final Lm7;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lk7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll7;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ll7;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lm7;->a:Lk7;

    return-void
.end method
