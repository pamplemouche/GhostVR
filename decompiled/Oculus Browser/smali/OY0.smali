.class public LOY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/CharSequence;

.field public final synthetic x:I

.field public final synthetic y:Z

.field public final synthetic z:LQY0;


# direct methods
.method public constructor <init>(LQY0;Ljava/lang/CharSequence;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, LOY0;->z:LQY0;

    iput-object p2, p0, LOY0;->w:Ljava/lang/CharSequence;

    iput p3, p0, LOY0;->x:I

    iput-boolean p4, p0, LOY0;->y:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, LOY0;->z:LQY0;

    iget-object v1, p0, LOY0;->w:Ljava/lang/CharSequence;

    iget v2, p0, LOY0;->x:I

    iget-boolean v3, p0, LOY0;->y:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget v3, v0, LQY0;->i:I

    const/high16 v5, -0x80000000

    or-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    iput v4, v0, LQY0;->i:I

    .line 4
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Ljava/lang/CharSequence;IZI)Z

    return-void
.end method
