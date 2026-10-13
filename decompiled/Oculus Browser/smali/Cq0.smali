.class public final synthetic LCq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# static fields
.field public static final a:Lorg/chromium/base/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LCq0;

    invoke-direct {v0}, LCq0;-><init>()V

    sput-object v0, LCq0;->a:Lorg/chromium/base/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LBq0;

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, LDq0;->c:Z

    .line 3
    sput-object p1, LDq0;->a:LBq0;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, LDq0;->b:J

    return-void
.end method
