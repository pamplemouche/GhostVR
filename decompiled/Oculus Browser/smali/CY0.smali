.class public LCY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/KeyEvent;

.field public final synthetic x:LQY0;


# direct methods
.method public constructor <init>(LQY0;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCY0;->x:LQY0;

    iput-object p2, p0, LCY0;->w:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LCY0;->x:LQY0;

    iget-object v1, p0, LCY0;->w:Landroid/view/KeyEvent;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_1

    .line 5
    iput v4, v0, LQY0;->i:I

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    and-int/2addr v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const v1, 0x7fffffff

    and-int/2addr v1, v3

    .line 6
    iget v3, v0, LQY0;->i:I

    if-eqz v3, :cond_3

    if-ne v1, v3, :cond_2

    .line 7
    invoke-virtual {v0, v3, v4}, LQY0;->a(II)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0, v3, v1}, LQY0;->a(II)V

    goto :goto_1

    .line 9
    :cond_3
    iput v1, v0, LQY0;->i:I

    goto :goto_1

    .line 10
    :cond_4
    iget v1, v0, LQY0;->i:I

    if-eqz v1, :cond_7

    if-eqz v3, :cond_7

    .line 11
    invoke-static {v1, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {v0, v1, v4}, LQY0;->a(II)V

    goto :goto_1

    .line 13
    :cond_5
    iget v1, v0, LQY0;->i:I

    invoke-virtual {v0, v1, v4}, LQY0;->a(II)V

    .line 14
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 15
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->e()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    iget-wide v1, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->w:J

    .line 17
    invoke-static {v1, v2, v0}, LJ/N;->M_V5g5ie(JLjava/lang/Object;)V

    :cond_7
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_8

    return-void

    .line 18
    :cond_8
    iget-object v0, p0, LCY0;->x:LQY0;

    .line 19
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 20
    iget-object v1, p0, LCY0;->w:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Landroid/view/KeyEvent;)Z

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 21
    throw v0
.end method
