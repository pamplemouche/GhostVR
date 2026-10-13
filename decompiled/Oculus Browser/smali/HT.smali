.class public LHT;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:J

.field public final synthetic x:Lorg/chromium/base/JavaHandlerThread;


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;J)V
    .locals 0

    .line 1
    iput-object p1, p0, LHT;->x:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, LHT;->w:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LHT;->x:Lorg/chromium/base/JavaHandlerThread;

    .line 2
    iget-object v0, v0, Lorg/chromium/base/JavaHandlerThread;->a:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4
    iget-wide v0, p0, LHT;->w:J

    .line 5
    invoke-static {v0, v1}, LJ/N;->MYwg$x8E(J)V

    return-void
.end method
