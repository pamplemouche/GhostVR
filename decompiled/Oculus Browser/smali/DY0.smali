.class public LDY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:LQY0;


# direct methods
.method public constructor <init>(LQY0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, LDY0;->y:LQY0;

    iput p2, p0, LDY0;->w:I

    iput p3, p0, LDY0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LDY0;->y:LQY0;

    .line 2
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 3
    iget v1, p0, LDY0;->w:I

    iget v2, p0, LDY0;->x:I

    .line 4
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 6
    invoke-static {v3, v4, v0, v1, v2}, LJ/N;->MmtjCblb(JLjava/lang/Object;II)V

    :goto_0
    return-void
.end method
