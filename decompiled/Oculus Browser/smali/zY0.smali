.class public LzY0;
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
    iput-object p1, p0, LzY0;->x:LQY0;

    iput p2, p0, LzY0;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LzY0;->x:LQY0;

    .line 2
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    .line 3
    iget v1, p0, LzY0;->w:I

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->r()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->c()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->d()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v0, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->B:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .line 8
    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->b()V

    .line 9
    iget-wide v1, v0, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->x:J

    .line 10
    invoke-static {v1, v2, v0}, LJ/N;->MNvj1u1S(JLjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
