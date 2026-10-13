.class public final LR90;
.super LE0;
.source "PG"


# direct methods
.method public synthetic constructor <init>(LO90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LE0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LQ90;

    invoke-direct {v1, p1}, LQ90;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
