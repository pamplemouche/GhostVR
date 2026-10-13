.class public LJX0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/Surface;

.field public final synthetic x:LMX0;


# direct methods
.method public constructor <init>(LMX0;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJX0;->x:LMX0;

    iput-object p2, p0, LJX0;->w:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LJX0;->x:LMX0;

    .line 2
    iget-object v0, v0, LMX0;->x:LCX0;

    .line 3
    iget-object v1, p0, LJX0;->w:Landroid/view/Surface;

    invoke-interface {v0, v1}, LCX0;->a(Landroid/view/Surface;)V

    return-void
.end method
