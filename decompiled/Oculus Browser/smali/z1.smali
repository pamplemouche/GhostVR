.class public Lz1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field public final synthetic w:LJ6;

.field public final synthetic x:LE1;


# direct methods
.method public constructor <init>(LE1;LJ6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz1;->x:LE1;

    iput-object p2, p0, Lz1;->w:LJ6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz1;->w:LJ6;

    invoke-virtual {v0, p1}, Ld7;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lz1;->x:LE1;

    iget-object v0, v0, LE1;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz1;->x:LE1;

    iget-object v0, v0, LE1;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
