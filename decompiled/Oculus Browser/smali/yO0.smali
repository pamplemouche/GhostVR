.class public LyO0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:Ljava/util/Map;

.field public static e:I


# instance fields
.field public final a:I

.field public b:LBT;

.field public final c:LCT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LyO0;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(LCT;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iput-object p1, p0, LyO0;->c:LCT;

    .line 4
    iput p2, p0, LyO0;->a:I

    .line 5
    new-instance v0, LxO0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, LxO0;-><init>(ILwO0;)V

    invoke-virtual {p1, v0}, LCT;->a(Ljava/lang/Object;)LBT;

    move-result-object p1

    iput-object p1, p0, LyO0;->b:LBT;

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    sget v0, LyO0;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LyO0;->e:I

    .line 2
    sget-object v1, LyO0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput v0, LyO0;->e:I

    .line 4
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, LvO0;->a:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LyO0;->b:LBT;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, LyO0;->a()LxO0;

    move-result-object v0

    invoke-virtual {v0, p1}, LR6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 4
    invoke-static {}, LyO0;->b()V

    return-object p1
.end method

.method public final a()LxO0;
    .locals 3

    .line 10
    iget-object v0, p0, LyO0;->b:LBT;

    .line 11
    iget-object v0, v0, LBT;->a:Ljava/lang/Object;

    .line 12
    check-cast v0, LxO0;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, LxO0;

    iget v1, p0, LyO0;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LxO0;-><init>(ILwO0;)V

    .line 14
    iget-object v1, p0, LyO0;->c:LCT;

    invoke-virtual {v1, v0}, LCT;->a(Ljava/lang/Object;)LBT;

    move-result-object v1

    iput-object v1, p0, LyO0;->b:LBT;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    if-eqz p2, :cond_2

    .line 6
    iget-object v0, p0, LyO0;->b:LBT;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LyO0;->a()LxO0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LR6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    invoke-static {}, LyO0;->b()V

    .line 9
    sget-object v0, LyO0;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
