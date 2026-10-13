.class public Lid1;
.super LE0;
.source "PG"


# instance fields
.field public final synthetic b:LF0;

.field public final synthetic c:Ljd1;


# direct methods
.method public constructor <init>(Ljd1;LF0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lid1;->c:Ljd1;

    iput-object p2, p0, Lid1;->b:LF0;

    invoke-direct {p0}, LE0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lid1;->c:Ljd1;

    iget-object v0, p0, Lid1;->b:LF0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v1, Lhd1;

    invoke-direct {v1, p1, v0}, Lhd1;-><init>(Ljd1;LF0;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
