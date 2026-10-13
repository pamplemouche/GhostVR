.class public final synthetic LzV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LBV;

.field public final x:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(LBV;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LzV;->w:LBV;

    iput-object p2, p0, LzV;->x:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LzV;->w:LBV;

    iget-object v1, p0, LzV;->x:Landroid/os/IBinder;

    .line 1
    iget-object v0, v0, LBV;->a:LLV;

    invoke-virtual {v0, v1}, LLV;->a(Landroid/os/IBinder;)V

    return-void
.end method
