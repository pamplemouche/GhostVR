.class public LyY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:LQY0;


# direct methods
.method public constructor <init>(LQY0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LyY0;->x:LQY0;

    iput p2, p0, LyY0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, LyY0;->x:LQY0;

    .line 2
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 3
    iget v1, p0, LyY0;->w:I

    .line 4
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->I:I

    const/4 v3, 0x1

    if-nez v2, :cond_5

    const/4 v2, 0x5

    const-wide/16 v4, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 6
    iget-wide v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v2, v3, v0, v1}, LJ/N;->Mm_z91JF(JLjava/lang/Object;I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-wide v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {v1, v2, v0, v3}, LJ/N;->Mm_z91JF(JLjava/lang/Object;I)V

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v1, 0x42

    const/16 v2, 0x16

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(II)V

    :goto_1
    return-void
.end method
