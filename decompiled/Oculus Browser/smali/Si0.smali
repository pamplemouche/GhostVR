.class public LSi0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(LWi0;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, LSi0;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LSi0;->a:J

    sub-long v5, v0, v2

    const-wide/16 v7, 0x1b58

    const-wide/32 v9, 0x2255100

    const/16 v11, 0x32

    const-string v4, "Media.VideoPersistence.Duration"

    .line 3
    invoke-static/range {v4 .. v11}, LfV;->a(Ljava/lang/String;JJJI)V

    return-void
.end method
