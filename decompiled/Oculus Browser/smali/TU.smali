.class public LTU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static x:LTU;


# instance fields
.field public final w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LTU;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Android.MemoryPressureNotification."

    .line 2
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LTU;->w:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, LTU;

    const-string v1, "Browser"

    invoke-direct {v0, v1}, LTU;-><init>(Ljava/lang/String;)V

    sput-object v0, LTU;->x:LTU;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    sget-object v1, LTU;->x:LTU;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, LTU;

    const-string v1, "ChildService"

    invoke-direct {v0, v1}, LTU;-><init>(Ljava/lang/String;)V

    sput-object v0, LTU;->x:LTU;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    sget-object v1, LTU;->x:LTU;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 5
    iget-object v0, p0, LTU;->w:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, LTU;->a(I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v1, 0xa

    if-eq p1, v1, :cond_5

    const/16 v1, 0xf

    if-eq p1, v1, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    .line 6
    :cond_4
    invoke-virtual {p0, v0}, LTU;->a(I)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    .line 7
    invoke-virtual {p0, p1}, LTU;->a(I)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    .line 8
    invoke-virtual {p0, p1}, LTU;->a(I)V

    :goto_0
    return-void
.end method
