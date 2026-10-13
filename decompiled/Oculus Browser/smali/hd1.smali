.class public final synthetic Lhd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Ljd1;

.field public final x:LF0;


# direct methods
.method public constructor <init>(Ljd1;LF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd1;->w:Ljd1;

    iput-object p2, p0, Lhd1;->x:LF0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhd1;->w:Ljd1;

    iget-object v1, p0, Lhd1;->x:LF0;

    .line 1
    iget-boolean v0, v0, Ljd1;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method
