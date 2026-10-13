.class public LaU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static x:LaU0;

.field public static y:J


# instance fields
.field public final w:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaU0;->w:J

    .line 3
    sget-object v0, LaU0;->x:LaU0;

    if-nez v0, :cond_0

    .line 4
    sput-object p0, LaU0;->x:LaU0;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    sget-object v0, LaU0;->x:LaU0;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-object v0, LaU0;->x:LaU0;

    .line 3
    sget-wide v0, LaU0;->y:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LaU0;->w:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    sput-wide v2, LaU0;->y:J

    :cond_0
    return-void
.end method
