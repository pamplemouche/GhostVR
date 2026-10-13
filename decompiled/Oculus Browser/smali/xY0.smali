.class public LxY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/CharSequence;

.field public final synthetic x:I

.field public final synthetic y:LQY0;


# direct methods
.method public constructor <init>(LQY0;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LxY0;->y:LQY0;

    iput-object p2, p0, LxY0;->w:Ljava/lang/CharSequence;

    iput p3, p0, LxY0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LxY0;->y:LQY0;

    iget-object v1, p0, LxY0;->w:Ljava/lang/CharSequence;

    iget v2, p0, LxY0;->x:I

    const/4 v3, 0x0

    .line 2
    iput v3, v0, LQY0;->i:I

    .line 3
    iget-object v0, v0, LQY0;->e:Lorg/chromium/content/browser/input/ImeAdapterImpl;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->a(Ljava/lang/CharSequence;IZI)Z

    return-void
.end method
